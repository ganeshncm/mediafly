#include "MediaflyAuthentication_GetBoundMFUsersData.h"
#include <QDebug>

void MediaflyAuthentication_GetBoundMFUsersData::read(const QDomDocument& doc)
{
	qDebug() << __PRETTY_FUNCTION__;

	QDomNode it = doc.firstChildElement("response").firstChildElement("mfusers").firstChild();
	while (!it.isNull()) {
		QDomElement el = it.toElement();
		if (!el.isNull()) {
			mf::User user(el.attribute("accountName"), (el.attribute("default") == "true") ? true : false);
			emit userRead(user);
		}
		it = it.nextSibling();
	}
	emit userReadFinished();
}
