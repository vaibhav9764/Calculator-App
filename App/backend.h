#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QtQml>
#include <QString>
#include <QJSEngine>

class Backend : public QObject
{
    Q_OBJECT
public:
    explicit Backend(QObject *parent = nullptr);

    Q_INVOKABLE QString evaluateExpression(const QString &expression);

signals:
};

#endif // BACKEND_H
