#include "MediaflyChannelModel.h"
#include "MediaflyChannelModelThread.h"
#include "MediaflyEpisodeModel.h"
#include "MediaflyEpisodeModelThread.h"
#include "MediaflyList.h"
#include <QObject>
#include <QVBoxLayout>

class MediaflyMenu : public QWidget
{
	Q_OBJECT
public:
	MediaflyMenu(QWidget *parent = 0); 
	virtual ~MediaflyMenu() { };

signals:
	void showPlayMenu(const QModelIndex& index);
	void showShowMenu(const QModelIndex& index);

private:
	enum State
	{
		ChannelMenu,
		EpisodeMenu,
	};

	QVBoxLayout      m_layout;
	MediaflyList     m_listView;
	QString	         m_channelSlug;
	State	         m_state;

	MediaflyChannelModel m_channelModel;

	MediaflyEpisodeModelThread m_episodeModelThread;
	MediaflyEpisodeModel *m_episodeModel;

	static const int itemsReadAtOnce = 50;

	void renderEpisodeMenu(const QModelIndex& index);
	void renderChannelMenu(const QModelIndex& index);
	void render(const QModelIndex& index);

private slots:
	void handleEnterKey();
	void handleRightKey();
	void handleLeftKey();
	void uploadNextPartOfMenu();

private slots:
	void updateChannelModel();
	void updateModel(const MediaflyEpisodeModel& m);
	void errorHandler(const QString& errorMsg);
};

