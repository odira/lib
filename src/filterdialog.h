#ifndef VYBORG_FILTERDIALOG_H
#define VYBORG_FILTERDIALOG_H

#include <QDialog>

QT_BEGIN_NAMESPACE
class QSqlTableModel;
class QLineEdit;
class QComboBox;
class QCheckBox;
class QPushButton;
QT_END_NAMESPACE

class VyborgFilterDialog : public QDialog
{
    Q_OBJECT

public:
    VyborgFilterDialog(QSqlTableModel *model = 0,
                       QWidget *parent = 0);

    void addColumn(const QString &columnText,
                   const int &columnData);
    void addColumn(const QString &columnText,
                   const QString &columnData);

private slots:
    void filterRegExpChanged();
    void filter();
    void close();

// Visual elements
private:
    QLineEdit   *patternLineEdit;
    QComboBox   *syntaxComboBox;
    QComboBox   *columnComboBox;
    QCheckBox   *caseSensitivityCheckBox;
    QPushButton *filterButton;

private:
    QSqlTableModel *m_model;
};

#endif // VYBORG_FILTERDIALOG_H
