import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/models/productModel.dart';
import 'package:online_shop/screens/detailScreen.dart';
import 'package:online_shop/screens/home.dart';

class ProductsScreen extends StatefulWidget {
  ProductsScreen() : super();
  
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List<ProductModel> models = new List<ProductModel>();

  @override
  void initState() {
    models.add(new ProductModel("Эмоциональный интеллект", "Электронный курс", "59 000 руб.", "Описание курса: Все люди ежедневно испытывают спектр эмоций на работе, в общении с близкими, в общественных местах. Эмоции могут быть как позитивные, так и негативные, но безусловно они отражаются на дальнейшем поведении: накопленные отрицательные эмоции могут плохо отразиться на общении с коллегами, а радостное настроение и позитивный настрой наоборот помогут сконцентрироваться на работе. Если ваши сотрудники научатся управлять своими эмоциями, то их работа будет эффективнее, а атмосфера в коллективе дружеской и доверительной. Этот курс научит распознавать эмоции, направлять их в продуктивное русло, контролировать себя и управлять эмоциями других людей, а также принимать взвешенные, рациональные решения.", "https://prolearning.ru/upload/iblock/bb7/bb74b02c2c9c78f94869283e3f315fdc.png"));
    models.add(new ProductModel("Делегирование", "Электронный курс", "59 000 руб.", "Описание курса: Начальники отделов и руководители проектов часто жалуются на большое количество задач? Вы замечаете, что у них падает мотивация и силы на исходе? Решение научите их делегировать. Это не только освободит время руководителей, чтобы они могли заняться стратегически важными направлениями бизнеса, но и способствует развитию их подчиненных. В этом курсе ваши сотрудники получат основную информацию о том, как делегировать полномочия внутри отдела или коллегам из другого направления, каким специалистам можно доверять выполнение ключевых проектов, как мотивировать и развивать своих подчиненных, как избежать ошибок при делегировании и как их исправить, если они уже допущены.", "https://prolearning.ru/upload/iblock/526/526b7e8be1a3b4a9e02acd583c455891.png"));
    models.add(new ProductModel("Охрана труда в офисе", "Электронный курс", "99 000 руб.", "Описание курса: На первый взгляд кажется, что офис – безопасное место для работы. Однако даже за обычным рабочим местом вас подстерегает опасность: скользкие лестницы, провода от устройств, включенный на охлаждение кондиционер. Поэтому в каждой организации проводят инструктаж о правилах охраны труда в офисе, чтобы сотрудники ответственно относились к своей безопасности. Этот курс – альтернатива многостраничным законодательным актам и многочасовым лекциям в классе. Мы сделали выжимку полезной информации и дали ссылки на источники для самых любознательных. А чтобы показать важность соблюдения правил охраны труда, привели примеры из жизни.", "https://prolearning.ru/upload/iblock/1fc/1fca35eaab35b7760138db20084b5f9c.png"));
    models.add(new ProductModel("Информационная безопасность", "Электронный курс", "59 000 руб.", "Описание курса: Наша жизнь тесно связана с технологиями и Интернетом: в работе используем персональные компьютеры и мобильные устройства, ищем информацию во всемирной сети, пользуемся электронной почтой и мессенджерами. Это быстро и удобно, но в то же время опасно. Персональные и рабочие данные нужно тщательно защищать от вирусов и мошенников. В больших корпорациях этому уделяется особенное внимание: заражение вирусом одного компьютера приводит к поломке других устройств и потере конфиденциальной информации. В этом курсе на примере реальных ситуаций ваши сотрудники узнают, как защитить корпоративные устройства от информационных угроз и обезопасить данные.", "https://prolearning.ru/upload/iblock/d84/d844fe7800ce4e43df8c9dc51c726676.png"));
    models.add(new ProductModel("Вводный противопожарный инструктаж", "Электронный курс", "99 000 руб.", "Описание курса: Соблюдение пожарной безопасности в офисе компании, на ее территории и объектах одно из требований закона и правил охраны труда. При этом такая сложная и обширная информация зачастую воспринимается сотрудниками компании как нечто скучное, приевшееся и необязательное для «погружения» в тему. Наш электронный курс «Вводный противопожарный инструктаж» станет отличной заменой или дополнением очным инструктажам. Программа курса составлена в соответствии с Приказом МЧС России от 12 декабря 2007г. No 645 'Об утверждении Норм пожарной безопасности 'Обучение мерам пожарной безопасности работников организаций». Материалы разработаны практикующим экспертом в области охраны труда и пожарной безопасности. При всем этом данный электронный курс содержит в себе иллюстрированные примеры, практические кейсы и вопросы для самопроверки, что позволяет добиться большего в вовлечении студентов и найти компромисс между обязательным и увлекательным.", "https://prolearning.ru/upload/iblock/8d7/8d7ff5b0c20e45342287b5f588d3b36f.png"));
    models.add(new ProductModel("Самомотивация", "Электронный курс", "59 000 руб.", "Описание курса: Работа, семья, друзья, увлечения – все мы хотим получить от жизни максимум и успеть все. Такой ритм иногда выматывает: мы устаем, теряем ориентир и сбиваемся с пути. То же самое происходит и с нашими коллегами. Что делать, если у сотрудников нет энергии и желания выполнять намеченный план? Что предпринять, если у специалистов пропало вдохновение и интерес к работе? Что поможет им двигаться вперед и получать удовольствие от процесса? Ответы на такие сложные и актуальные вопросы дает электронный курс «Самомотивация». Мы собрали самую важную информацию и можем рассказать вашим сотрудникам, как гармонично переплести работу и личную жизнь, чтобы с энтузиазмом двигаться к цели и наслаждаться тем, что они делают.","https://prolearning.ru/upload/iblock/652/6524685dd33c86c76d8ef60015ef1fa9.png"));
    models.add(new ProductModel("Оказание первой помощи", "Электронный курс", "99 000 руб.",  "Описание курса: В условиях современного общества угроза для здоровья может возникнуть у любого человека вследствие внезапно проявившегося острого заболевания, несчастного случая или отравления. В том числе в офисе или на производстве. Именно такая, внезапно возникшая ситуация предполагает оказание больному первой помощи. Оказание первой помощи может стать принципиальным вопросом жизни и смерти пострадавшего. Поэтому очень важно, чтобы все сотрудники знали, как себя необходимо вести в подобных ситуациях. В этом курсе в форме практических заданий и наглядных кейсов представлена максимально важная информация по этому вопросу.", "https://prolearning.ru/upload/iblock/9de/9dec8a4064f81f981fb741f9fdee7d61.png"));
    models.add(new ProductModel("Цикл управления", "Электронный курс", "99 000 руб.", "Описание курса: Кто такой руководитель? - Это человек, ответственный за результат, который достигнет его команда. А в каком случае команда достигнет наилучший результат? • Если правильно поставлена цель; • Каждый сотрудник знает, за что он отвечает, хочет и может это сделать; • Есть все необходимые ресурсы; • Осуществляется своевременный контроль и анализ происходящего.vВсе это – этапы цикла управления. Это база, на которой основана работа любого руководителя. В этом курсе мы собрали самые основные, эффективные, проверенные временем инструменты каждого этапа цикла управления, которые помогут менеджерам организовать работу своей команды наилучшим образом.", "https://prolearning.ru/upload/iblock/7e7/7e7ea7defa48f3d3c46f6cacc88fc1ad.jpg"));
    models.add(new ProductModel("Обратная связь", "Электронный курс", "59 000 руб.", "Описание курса: Во многих организациях сотрудники делятся на 2 типа: 1) те, кто остро реагирует на обратную связь, обижаются, уходят в себя, иногда вообще начинают работать хуже, чем ранее; 2) те, кто не реагирует на замечания. Вы им уже тысячу раз говорили, как правильно, а они продолжают совершать одну и ту же ошибку. Возможно, дело в сотрудниках. Но чаще всего проблема кроется в самой обратной связи. В этом курсе мы научим вас давать эффективную, развивающую обратную связь, чтобы не просто скорректировать действия сотрудника, но чтобы он сам осознал свои ошибки и начал профессионально расти и повышать свою эффективность.", "https://prolearning.ru/upload/iblock/40f/40fa539e8cdbbc684f7bd084dd96dc2f.jpg"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: ListView.builder(
          itemCount: models.length,
          itemBuilder: (BuildContext context, int index){
            return  ListTile(
                title: Text(models[index].title),
                leading: Icon(Icons.cast_for_education),
                subtitle: Text(models[index].subtitle),
                trailing: Text(models[index].price),
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => DetailScreen(models[index])));
                });
          }
      ),

      //body: Text("ProductsScreen"),
    );
  }
}