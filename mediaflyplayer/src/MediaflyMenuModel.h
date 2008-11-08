#ifndef MediaflyMenuModel_H
#define MediaflyMenuModel_H

#include "UsersModel.h"
#include <QStringList>
#include <QList>

using namespace mf;

class MediaflyMenuModel : public UsersModel
{
public:
	enum Roles
	{
		nameRole = Qt::DisplayRole,
		slugRole = Qt::UserRole + 2000,
		origNameRole,
		defaultRole,
	};

	enum Menus
	{
		MENU_SEARCH = 0,
		MENU_MEDIA_CHANNELS,
		MENU_POPULAR_CHANNELS,
		MENU_PERSONALIZE,
		MENU_USER,
		MENU_ADD_PERSON,
		MENU_FRIENDS_CHANNELS
	};

	MediaflyMenuModel(QObject *parent = 0);

	int rowCount(const QModelIndex& parent = QModelIndex()) const;
	QVariant data(const QModelIndex& parent, int role) const;

private:
	QStringList m_name;
	QStringList m_name_users;
	QList<int>  m_slug;
	QList<int>  m_slug_users;
};

#endif

