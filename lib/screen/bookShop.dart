import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:dotted_line/dotted_line.dart';
import '../components/listBook.dart';
import 'bookInfo.dart';

class BookShop extends StatefulWidget {
  static const routeName = '/bookShop';

  const BookShop({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BookShop();
  }
}

class _BookShop extends State<BookShop> with TickerProviderStateMixin {
  late TabController _tabController;
  List<Map> tabData = <Map>[
    {'type': 'New', 'icon': ''},
    {'type': 'Romance'},
    {'type': 'Comedy'},
    {'type': 'Triller'},
    {'type': 'Sci-fi'},
    {'type': 'Advanture'},
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabData.length - 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.width;

    List<Map> bookList_shop = <Map>[
      {
        'name': 'โกรธแค้นที่แสนหวาน',
        'rating': 5,
        'price': 500,
        'images':
            'https://storage.naiin.com/system/application/bookstore/resource/product/202205/548250/6000060494_front_XXL.jpg?imgname=%E0%B9%82%E0%B8%81%E0%B8%A3%E0%B8%98%E0%B9%81%E0%B8%84%E0%B9%89%E0%B8%99%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B9%81%E0%B8%AA%E0%B8%99%E0%B8%AB%E0%B8%A7%E0%B8%B2%E0%B8%99-(%E0%B8%9F%E0%B8%A3%E0%B8%B5)',
        'writer': 'กรแก้ว',
        'chapter': 'ตอนที่ 1',
        'status': 'Not End',
        'Last Update': '11/11/1111',
        'comments': 120,
        'synopsis':
            'ฉันรัก...แต่เขาร้ายแถมยังคบกับเพื่อนในกลุ่มฉันอีก ทั้งๆ ที่เขาบอกว่าเกลียดแต่เขาก็ทำเรื่องแบบนั้นกับฉัน ฉันควรจะทำยังไงกับความรักครั้งนี้ดีนะ "ฉันได้ข่าวว่ามีรุ่นพี่มาติดพันนิ เธอตกลงคบกับมันใช่ไหม?" เขาไม่ตอบคำถามของฉัน พูดไปอีกเรื่องจนฉันที่มึนอยู่แล้ว ยิ่งมึนงงเข้าไปใหญ่ “แล้วมันเกี่ยวอะไรกับนาย” ฉันเสียงดังกลับอย่างโมโห แต่ก็ต้องเบิกตาโต เพราะมือของเขาเอื้อมมาปลดกระดุมเสื้อฉัน ทีละเม็ด ทีละเม็ด ฉันหอบหายใจแรง ใบหน้าเห่อแดงด้วยความอับอาย รู้สึกหวาดกลัวขึ้นมาจริง ๆ แล้ว “อย่านะ!!...นี่นายคิดจะทำอะไรกันแน่” “อยากมีแฟนงั้นเหรอ? ต้องดูก่อนว่าฉันอนุญาตไหม?” "นายจะบ้าเหรอ? ฉันมีแฟนทำไมต้องถามนายด้วย ทีนายมีแฟน นายยังไม่มาถามฉันเลย กี่คนต่อกี่คนแล้วด้วย...ซุนมีอีก แฟนนายไม่ใช่เหรอ ยังมาทำอะไรแบบนี้กันฉันอีกนี้ หยุดนะ!!”',
        'statusBuy': false,
      },
      {
        'name': 'เร้นรักใต้เงาจันทร์ - อาโกว ชะตารักนิรันดร์',
        'rating': 4,
        'price': 400,
        'images':
            'https://storage.naiin.com/system/application/bookstore/resource/product/202205/548230/6000060483_front_XXL.jpg?imgname=%E0%B9%80%E0%B8%A3%E0%B9%89%E0%B8%99%E0%B8%A3%E0%B8%B1%E0%B8%81%E0%B9%83%E0%B8%95%E0%B9%89%E0%B9%80%E0%B8%87%E0%B8%B2%E0%B8%88%E0%B8%B1%E0%B8%99%E0%B8%97%E0%B8%A3%E0%B9%8C---%E0%B8%AD%E0%B8%B2%E0%B9%82%E0%B8%81%E0%B8%A7-%E0%B8%8A%E0%B8%B0%E0%B8%95%E0%B8%B2%E0%B8%A3%E0%B8%B1%E0%B8%81%E0%B8%99%E0%B8%B4%E0%B8%A3%E0%B8%B1%E0%B8%99%E0%B8%94%E0%B8%A3%E0%B9%8C-(%E0%B8%9F%E0%B8%A3%E0%B8%B5)',
        'writer': 'T.O.P',
        'chapter': 'ตอนที่ 2',
        'status': 'Not End',
        'Last Update': '12/12/1112',
        'comments': 160,
        'synopsis':
            'เรื่องราวความรักระหว่างเทพธิดากับบุรุษผู้พิฆาตดวงจันทร์ และเรื่องราวความรักของหญิงสาวที่เกิดมาพร้อมปานครึ่งใบหน้า ใต้หล้าประสบเภทภัย อนธการถูกแสงสว่างกลืนหาย โฮ่วอี้ เดินทางตามหาชิ้นส่วนวิเศษ ซึ่งนำมาใช้สร้างอาวุธในการกำจัดอาทิตย์ทั้งเก้าดวง ทว่าบุรุษผู้พิฆาตดวงอาทิตย์หารู้ไม่ว่า ดวงอาทิตย์เหล่านั้นคือราชบุตรเขยของเง็กเซียนฮ่องเต้ เง็กเซียนฮ่องเต้จึงส่งเทพธิดาฉางเอ๋อลงมาจัดการโฮ่วอี้ ทว่า… นางกลับบังเกิดความรัก อาโกว หญิงสาวเกิดมาพร้อมปานแดงครึ่งใบหน้า ได้รับพรจากแสงจันทร์ หยั่งรู้อนาคตเพื่อช่วยเหลือคนดี แม้ชีวิตคล้ายไร้คู่เคียง ทว่าคู่วาสนาย่อมปรากฏเสมอ',
        'statusBuy': true,
      },
      {
        'name': 'เพียงครั้งในค่ำคืน',
        'rating': 3,
        'price': 300,
        'images':
            'https://storage.naiin.com/system/application/bookstore/resource/product/202204/546894/6000059916_front_XXL.jpg?imgname=%E0%B8%95%E0%B8%B1%E0%B8%A7%E0%B8%AD%E0%B8%A2%E0%B9%88%E0%B8%B2%E0%B8%87-%E0%B9%80%E0%B8%9E%E0%B8%B5%E0%B8%A2%E0%B8%87%E0%B8%84%E0%B8%A3%E0%B8%B1%E0%B9%89%E0%B8%87%E0%B9%83%E0%B8%99%E0%B8%84%E0%B9%88%E0%B8%B3%E0%B8%84%E0%B8%B7%E0%B8%99-(%E0%B8%9F%E0%B8%A3%E0%B8%B5)',
        'writer': 'แพรสีนิล',
        'chapter': 'ตอนที่ 3',
        'status': 'End',
        'Last Update': '13/13/1113',
        'comments': 99,
        'synopsis':
            'พลาดพลั้งเพียงครั้ง พันธนาการตลอดไป .... ‘ดาริกา’ สาวน้อยหน้าแฉล้มที่มีความฝันอยากหนีออกจากกรอบบังคับของครอบครัว ด้วยการตั้งใจสอบให้ติดมหาวิทยาลัยที่อยู่ห่างไกลจากบ้านเกิดเมืองนอนถึงเจ็ดร้อยกว่ากิโล แต่แล้วหนทางที่คิดว่าสวยงามก็กลับพลิกผันเมื่อความมึนเมาในคืนที่เพื่อน ๆ พาไปเลี้ยงฉลองในวันที่ใคร ๆ ก็เรียกว่าวันแห่งความรัก ได้นำพาให้เธอมาพบกับ ‘เวฬุ’ ผู้ชายอันตรายที่มาพร้อมเรื่องราวสุดเซอร์ไพรส์ และพันธนาการแปลกใหม่ที่เรียกว่า "ที่รัก" “ถอยไปเลยนะ มันเจ็บ ได้ยินไหมว่ามันเจ็บ นี่!” “แล้วพี่ไม่เจ็บกว่าเหรอวะ เมื่อคืนนอนกับพี่ มีความสุขกับพี่ แต่พอมาวันนี้เสือกทำเหมือนไม่มีอะไรเกิดขึ้น ทำได้ไงวะ?” “พี่ควรจะดีใจมากกว่าไหมที่หนูไม่ตื่นมาร้องงอแงให้พี่รับผิดชอบอะ” “แต่พี่อยากรับผิดชอบเธอ”',
        'statusBuy': false,
      },
      {
        'name': 'ชีวิตดีขึ้นด้วยการแผ่เมตตาให้ตัวเอง',
        'rating': 2,
        'price': 200,
        'images':
            'https://storage.naiin.com/system/application/bookstore/resource/product/202204/546518/6000059721_front_XXL.jpg?imgname=%E0%B8%8A%E0%B8%B5%E0%B8%A7%E0%B8%B4%E0%B8%95%E0%B8%94%E0%B8%B5%E0%B8%82%E0%B8%B6%E0%B9%89%E0%B8%99%E0%B8%94%E0%B9%89%E0%B8%A7%E0%B8%A2%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B9%81%E0%B8%9C%E0%B9%88%E0%B9%80%E0%B8%A1%E0%B8%95%E0%B8%95%E0%B8%B2%E0%B9%83%E0%B8%AB%E0%B9%89%E0%B8%95%E0%B8%B1%E0%B8%A7%E0%B9%80%E0%B8%AD%E0%B8%87-(%E0%B8%9F%E0%B8%A3%E0%B8%B5)',
        'writer': 'จันทร์มังกร',
        'chapter': 'ตอนที่ 4',
        'status': 'Not End',
        'Last Update': '14/14/1114',
        'comments': 181,
        'synopsis':
            'ชีวิตคนเราทุกคน ล้วนมีทั้งความสุขและ ความทุกข์ ผ่านเข้ามาในชีวิตเป็นเรื่องปกติ ตอนมีความสุขก็ดีไป แต่เมื่อมีความทุกข์ไม่รู้จะ หันหน้าไปทางไหนดี พวกเราซึ่งเป็นชาวพุทธ มักหันหน้าเข้าวัดไหว้พระทำ บุญตักบาตร หรือ ถวายสังฆทานกันเป็นส่วนใหญ่และเมื่อทำบุญ กันแล้ว เราก็จะแผ่เมตตาให้กับสรรพสัตว์ ทั้งหลายให้ได้รับส่วนบุญกุศหลายคนไปทำบุญ แล้ว แต่ชีวิตยังคงไม่มีความสุข อาจเป็นเพราะ มีสิ่งหนึ่งที่คุณไม่ได้ทำ นั่นคือ คุณลืมแผ่เมตตาให้ตัวคุณเองคะ',
        'statusBuy': true,
      },
      {
        'name': 'กักตัว (ไม่) กักใจ',
        'rating': 1,
        'price': 100,
        'images':
            'https://storage.naiin.com/system/application/bookstore/resource/product/202203/542960/6000057191_front_XXL.jpg?imgname=%E0%B8%95%E0%B8%B1%E0%B8%A7%E0%B8%AD%E0%B8%A2%E0%B9%88%E0%B8%B2%E0%B8%87-%E0%B8%81%E0%B8%B1%E0%B8%81%E0%B8%95%E0%B8%B1%E0%B8%A7-(%E0%B9%84%E0%B8%A1%E0%B9%88)-%E0%B8%81%E0%B8%B1%E0%B8%81%E0%B9%83%E0%B8%88-(%E0%B8%9F%E0%B8%A3%E0%B8%B5)',
        'writer': 'แพรสีนิล',
        'chapter': 'ตอนที่ 5',
        'status': 'Not End',
        'Last Update': '15/15/1115',
        'comments': 210,
        'synopsis':
            'จากคนที่วัน ๆ ไม่ค่อยอยู่ติดบ้าน จู่ ๆ ก็มีอันต้องมาติดแหงก ไปไหนไม่ค่อยได้ แต่นั่นกลับเป็นจุดเปลี่ยนที่ทำให้เธอได้เจอกับ "เขา" หนุ่มข้างบ้านมาดกวนที่มีปากและหน้าตาเป็นอาวุธ ทว่าปฏิเสธไม่ได้เลยว่าความหล่อร้ายของเขา มันกลับทำให้ใจหญิงโฉดอย่างเธอหวั่นไหวแล้วนึกอยากกักตัวกับเขาไปยาว ๆ!แจ้งก่อนว่าเล่มนี้เป็นนิยายรักเล่มแรกของเซต รักละมุนซีรี่ย์ เน้นเสิร์ฟความหวาน ความฟิน อ่านสบาย ๆ อมยิ้มกับความอบอุ่นหัวใจของพระนางตัวอย่าง “ได้ของแล้วก็รีบ ๆ ไปสิ” เสียงทุ้มเอ่ยไล่พลางวางกล่องพัสดุเจ้าปัญหาลงบนพื้นใกล้ ๆ มือเรียวลูบคลำสะโพกตัวเองป้อย ๆ เมื่อรู้สึกว่าความเจ็บทุเลาลงบ้างแล้ว เธอจึงกัดฟันหยัดตัวหมายจะลุกขึ้น แต่สุดท้ายก็ทนไม่ไหวแล้วหย่อนตัวลงนั่งตามเดิม ริมฝีปากเม้มแน่น รับรู้ได้ถึงสายตาที่จ้องมองมาจนแผ่นหลังของเธอแทบทะลุแต่เพราะความปากหนัก ปาลิดาจึงเลี่ยงที่จะร้องขอให้อีกฝ่ายช่วยพยุงแล้วเปลี่ยนเป็นแจงเหตุผลที่เธอยังไม่ยอมลุกจากพื้นแทน “ขอฉันนั่งตรงนี้อีกแป็บ รบกวนคุณช่วยปลดล็อกประตูรั้วไว้ให้หน่อย ฉันดีขึ้นแล้วฉันจะไปเอง เดี๋ยวจะล็อกให้เหมือนเดิมค่ะ” “งั้นเอารถเข็นด้วยไหม หรือจะให้ปูพรมดี” “นี่!”',
        'statusBuy': false,
      },
      {
        'name': 'ขอความรักที ตอนพิเศษ',
        'rating': 5,
        'price': 400,
        'images':
            'https://storage.naiin.com/system/application/bookstore/resource/product/202207/552745/6000061518_front_XXL.jpg?imgname=%E0%B8%82%E0%B8%AD%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%A3%E0%B8%B1%E0%B8%81%E0%B8%97%E0%B8%B5-%E0%B8%95%E0%B8%AD%E0%B8%99%E0%B8%9E%E0%B8%B4%E0%B9%80%E0%B8%A8%E0%B8%A9-(%E0%B8%9F%E0%B8%A3%E0%B8%B5)',
        'writer': 'ไหมขวัญ',
        'chapter': 'ตอนที่ 5',
        'status': 'End',
        'Last Update': '16/16/1116',
        'comments': 514,
        'synopsis':
            '“คุณรังเกียจไหม” คีรีนทร์ที่แม้จะถอนจูบแล้วแต่เขาก็ยังไม่ยอมปล่อยหญิงสาวเป็นอิสระ มือทั้งสองยังคงประคองใบหน้านวลนั้นเอาไว้จนเกือบชิดหน้าของตัวเอง พร้อมทั้งใช้นิ้วหัวแม่มือไล้ริมฝีปากที่แดงช้ำเพราะฝีมือตัวเองถามเสียงพร่า “ไม่ตอบ เขาว่าการนิ่งมันคือการยอมรับ” ชายหนุ่มผละออกมาอย่างผิดหวังเมื่อร้อยรักเอาแต่นิ่ง “นั่นสินะ เรามันก็แค่ตัวแทน ปล่อยทิ้งไว้ให้แห้งเหี่ยวเฉาตายมันก็คงไม่เป็นไรหรอก” ไม่เพียงแค่พูดคีรินทร์ยังลุกขึ้นเดินไปหยิบเอาผ้าห่มในตู้มาปูบนพื้น “คุณจะทำอะไร” “นอนข้างล่าง และไม่ต้องใจดีชวนให้ขึ้นไปนอนข้างบนด้วยเลยนะ เพราะวันนี้ผมจะไม่ทนแล้ว” พูดจบชายหนุ่มก็คว้าหมอนมาทิ้งปุลงแล้วทิ้งตัวลงนอน ร้อยรักนั่งมองคนขี้งอนที่นอนหลับตานิ่งอยู่ข้างเตียงแล้วถอนหายใจ ก่อนจะข่มความอายบอกความรู้สึกออกไปในที่สุด “ถ้าฉันรังเกียจคุณจริงๆ จะอยากใช้ชีวิตคู่ไปด้วยกันเหรอคะ” เพียงเท่านั้นร่างสูงที่นอนอยู่บนพื้นก็ลุกขึ้นกระโดดขึ้นมาบนเตียงแทบจะทันที “แล้วก็ไม่บอกตั้งแต่แรก” “นี่คุณแกล้งงอนเหรอ” ร้อยรักที่ตอนนี้ถอยกรูดไปจนชิดหัวเตียงถามชายหนุ่มหน้าตาตื่น “เขาเรียกว่าเทคนิคมากกว่า” คีรินทร์กระตุกยิ้มพร้อมกับค่อยๆ คลานเข้าไปหาแม่กวางสาวที่นั่งกอดผ้าห่มไว้แน่น “เดี๋ยวๆ จะเริ่มเลยเหรอคะ ฉันขอเวลาทำใจ” ร้อยรักร้องขอเสียงสั่น เมื่อคีรินทร์เข้ามาใกล้จนประชิดตัว “ผมปล่อยให้คุณทำใจมานานพอละ ถ้าเริ่มแล้วคุณไม่โอเคค่อยบอกผมละกัน” ชายหนุ่มเสนอ n“คุณจะหยุดเหรอคะ” ร้อยรักถามอย่างใจชื้นขึ้นมานิดหน่อย บางทีเธออาจจะหยุดเขาได้ตั้งแต่เพิ่งจะเริ่มก็ได้ “เปล๊า ก็จะทำจนกว่าคุณจะโอเคนั่นแหละ”',
        'statusBuy': true,
      },
      {
        'name': 'เรือโกหก',
        'rating': 4,
        'price': 300,
        'images':
            'https://storage.naiin.com/system/application/bookstore/resource/product/202206/551017/6000061203_front_XXL.jpg?imgname=%E0%B9%80%E0%B8%A3%E0%B8%B7%E0%B8%AD%E0%B9%82%E0%B8%81%E0%B8%AB%E0%B8%81-(%E0%B8%9F%E0%B8%A3%E0%B8%B5)',
        'writer': 'ยูบิค',
        'chapter': 'ตอนที่ 4',
        'status': 'Not End',
        'Last Update': '17/17/1117',
        'comments': 555,
        'synopsis':
            'ยูบิควิทัส อาณาจักรจอมโกหก บรรพ 1 อาวุธแห่งกาย โยชน์ที่ 1 เรือโกหก เป็นการเปิดโลกเดินทางข้ามเวลาเพื่อท่องสู่อาณาจักรยูบิควิทัสของตัวละครเอกทั้งแปดคน พวกต้องผจญและดำรงชีวิตอยู่ด้วยการใช้เทคโนโลยีล้ำยุคเสมือนสรรพสิ่งคือสิ่งโกหก',
        'statusBuy': false,
      },
      {
        'name': 'ประสบการณ์เที่ยวเกาะพีพี',
        'rating': 3,
        'price': 200,
        'images':
            'https://storage.naiin.com/system/application/bookstore/resource/product/202206/549383/6000060759_front_XXL.jpg?imgname=%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%AA%E0%B8%9A%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%93%E0%B9%8C%E0%B9%80%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%A2%E0%B8%A7%E0%B9%80%E0%B8%81%E0%B8%B2%E0%B8%B0%E0%B8%9E%E0%B8%B5%E0%B8%9E%E0%B8%B5-(%E0%B8%9F%E0%B8%A3%E0%B8%B5)',
        'writer': 'ไข่มุกราตรี',
        'chapter': 'ตอนที่ 3',
        'status': 'End',
        'Last Update': '18/18/1118',
        'comments': 495,
        'synopsis': 'ประสบการณ์เที่ยวเกาะพีพี',
        'statusBuy': true,
      },
      {
        'name': 'ปฏิพัทธ์แสนหวาน',
        'rating': 2,
        'price': 100,
        'images':
            'https://storage.naiin.com/system/application/bookstore/resource/product/202201/540556/6000055984_front_XXL.jpg?imgname=%E0%B8%9B%E0%B8%8F%E0%B8%B4%E0%B8%9E%E0%B8%B1%E0%B8%97%E0%B8%98%E0%B9%8C%E0%B9%81%E0%B8%AA%E0%B8%99%E0%B8%AB%E0%B8%A7%E0%B8%B2%E0%B8%99-(%E0%B8%9F%E0%B8%A3%E0%B8%B5)',
        'writer': 'ชฎายุ',
        'chapter': 'ตอนที่ 2',
        'status': 'Not End',
        'Last Update': '19/19/1119',
        'comments': 432,
        'synopsis':
            'ตอนพิเศษจาก ‘ปฏิพัทธ์ใต้เงารัตติกาล’ ความหวานเล็ก ๆ ของบรรดาคู่รักไลแคนท์และแวมไพร์หลังจบศึกหนัก เมื่อพวกเขาได้กลับไปใช้ชีวิตสงบสุขหลังกำแพงปราสาทโบราณอีกครั้ง แต่ดูเหมือนว่าใครบางคนจะคอยป่วนและทำให้ใครอีกคนไม่อยู่ในความสงบสักเท่าไร',
        'statusBuy': false,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: heightScreen * 0.1,
        centerTitle: true,
        elevation: 0,
        flexibleSpace: Container(
          //  color: Colors.amber,
          child: Column(
            children: <Widget>[
              Container(
                  //  color: Colors.blue,
                  decoration: DottedDecoration(),
                  width: widthScreen * 0.9,
                  padding: EdgeInsets.only(bottom: heightScreen * 0.03),
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05),
                  child: Text(
                    'BookShop',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF000000),
                    ),
                  )),
            ],
          ),
        ),
        bottom: TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.transparent,
          // indicator: BoxDecoration(
          //     borderRadius: BorderRadius.circular(50), // Creates border
          //     color: Colors.greenAccent),
          isScrollable: true,
          controller: _tabController,
          tabs: <Widget>[
            for (int i = 1; i <= tabData.length - 1; i++)
              Container(
                  width: widthScreen * 0.2,
                  //   color: Colors.amber,
                  padding: EdgeInsets.only(bottom: heightScreen * 0.02),
                  child: Text(
                    '${tabData[i]['type']}',
                    textAlign: TextAlign.center,
                  ))
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          for (int i = 1; i <= tabData.length - 1; i++)
            ListBook(
              data_list: bookList_shop,
              single_column_assign: false,
              routName: BookInfo(),
              hide_change_column: true,
            ),
        ],
      ),
    );
  }
}
