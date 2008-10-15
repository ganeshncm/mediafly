#include "MediaflyEpisodeDetails.h"
#include "MediaflyEpisodeModel.h"
#include <QDebug>

MediaflyEpisodeDetails::MediaflyEpisodeDetails(QWidget *parent) :
	QWidget(parent)
{
	m_hLayoutDetails = new QHBoxLayout();
	m_hLayoutName = new QHBoxLayout();
	m_vLayout = new QVBoxLayout();
	m_header = new QLabel(this);
	m_icon = new QLabel(this);
	m_label = new QLabel(this);
	m_length = new QLabel(this);
	m_details = new QTextEdit(this);
	m_info = new QTextEdit(this);

	setFocusPolicy(Qt::StrongFocus);
	setFocus();

	m_icon->setFixedSize(80, 80);

	m_header->setAlignment(Qt::AlignRight);
	m_length->setAlignment(Qt::AlignRight);

	m_details->setReadOnly(true);
	m_info->setReadOnly(true);

	m_hLayoutName->addWidget(m_label);
	m_hLayoutName->addWidget(m_length);

	m_hLayoutDetails->addWidget(m_icon);
	m_hLayoutDetails->addWidget(m_details);

	m_vLayout->addWidget(m_header);
	m_vLayout->addLayout(m_hLayoutName);
	m_vLayout->addLayout(m_hLayoutDetails);
	m_vLayout->addWidget(m_info);

	setLayout(m_vLayout);
}

void MediaflyEpisodeDetails::show(const QModelIndex& index)
{
	m_index = index;
	update();

	connect(m_index.model(), SIGNAL(refreshed()),
	        this, SLOT(updateImage()));
}

void MediaflyEpisodeDetails::updateImage()
{
	if (m_icon->pixmap()->isNull()) {
		m_icon->setPixmap(m_index.data(MediaflyEpisodeModel::imageRole).value<QPixmap>());
	}
}

void MediaflyEpisodeDetails::update()
{
	m_header->setText("Episode Details");
	m_label->setText(m_index.data(MediaflyEpisodeModel::titleRole).toString());
	m_length->setText("???");
	m_icon->setPixmap(m_index.data(MediaflyEpisodeModel::imageRole).value<QPixmap>());
	m_details->setHtml("<b>Item details</b><br><b>Link:</b><br>" +
	                  m_index.data(MediaflyEpisodeModel::urlRole).toString() +
	                  "<br><b>Publication date:</b><br>" +
	                  m_index.data(MediaflyEpisodeModel::publishedRole).toString() +
	                  "<br><b>Enclosure:</b><br>" +
	                  m_index.data(MediaflyEpisodeModel::urlOriginalRole).toString());
	m_info->setHtml(m_index.data(MediaflyEpisodeModel::descriptionRole).toString());
}

void MediaflyEpisodeDetails::keyPressEvent(QKeyEvent *event)
{
	switch (event->key()) {
	case Qt::Key_Enter:
	case Qt::Key_Return:
	{
		emit showPlayMenu(m_index);
		break;
	}
	case Qt::Key_Left:
	{
		if (m_index.row() > 0)
			m_index = m_index.model()->index(m_index.row() - 1, 0);
		break;
	}
	case Qt::Key_Right:
	{
		MediaflyEpisodeModel::advanceToNextEpisode(m_index);
		break;
	}
	case Qt::Key_Escape:
	{
		emit back();
		break;
	}
	default:
		event->ignore();
		return;
	}
	update();
}

