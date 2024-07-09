#include "backend.h"

Backend::Backend(QObject *parent)
    : QObject{parent}
{}

QString Backend::evaluateExpression(const QString &expression)
{
    QJSEngine engine;
    QJSValue result = engine.evaluate(expression);

    if (result.isError()) {
        return "Invalid Input";
    }

    return result.toString();
}
