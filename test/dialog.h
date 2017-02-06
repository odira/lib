#ifndef DIALOG_H
#define DIALOG_H

#include <QDialog>

QT_BEGIN_NAMESPACE
class VyborgNavigationButtonBox;
QT_END_NAMESPACE

class Dialog : public QDialog
{
    Q_OBJECT

public:
    Dialog(QWidget *parent = 0);

private:
    VyborgNavigationButtonBox *m_navigationBB;
};

#endif // DIALOG_H
