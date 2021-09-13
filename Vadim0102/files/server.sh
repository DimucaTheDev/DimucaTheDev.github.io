## Settings / Настройки
## Avalible languages / Доступные языки: en, ru
username=Vadim0102
password=228
lang=ru
## Confing language / Конфиг языка
if [ "$lang" == "ru" ]
then
## ru
lusername="Имя"
lpassword="Пароль"
lsuccessfully="Вы успешно зашли"
lfailed="Не правильное имя или пароль"
else
## en
lusername="Username"
lpassword="Password"
lsuccessfully="You have successfully logged in"
lfailed="Invalid username or password"
fi
## Login / Вход
echo -e "$lusername: \c"
read loginusername
echo -e "$lpassword: \c"
read loginpassword
clear
if [ "$loginusername $loginpassword" == "$username $password" ]
then
echo "$lsuccessfully!"
else
echo "$lfailed!"
exit
fi
bash
