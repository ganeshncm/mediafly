/*
 *  Copyright(C) 2009 Milan Svoboda. 
 *               <milan.svoboda@centrum.cz>
 *
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, version 2 of the License.
 *  
 *
 *  This program is distributed in the hope that, in addition to its 
 *  original purpose to support Neuros hardware, it will be useful 
 *  otherwise, but WITHOUT ANY WARRANTY; without even the implied 
 *  warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
 *  See the GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 *
 ****************************************************************************/

#ifndef MediaflyPlay_H
#define MediaflyPlay_H

#include "ui_MediaflyPlay.h"
#include "PlayAudio.h"
#include "PlayVideo.h"
#include <QModelIndex>
#include <QKeyEvent>

namespace mf {

class Play : public QWidget, protected Ui::MediaflyPlay
{
	Q_OBJECT
public:
	Play(QWidget *parent = 0);

	void show(const QModelIndex& index);
	void getState(QModelIndex &currentIndex, QString &songPosition, QString &songLength);

signals:
	void back();
	void backToChannelsMenu();
	void showPlayqueue();
	void stateChange();

private:
	enum State
	{
		STOP,
		PAUSE,
		PLAY,
	}
	m_state;

	QModelIndex m_index;

	void keyPressEvent(QKeyEvent *event);
	void update();
	void updateStateIndicator(enum State state);

private slots:
	void handleChannelsButtonClicked();
	void handleNextEpisodeButtonClicked();
	void handlePlayqueueButtonClicked();
};

}

#endif

