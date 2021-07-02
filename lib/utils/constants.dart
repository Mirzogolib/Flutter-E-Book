// Here is book Content list
// initialPage in PDF viewer starts from 0 therefore, here the actual page number is 1 unit
// bigger than given value
const Map<int, String> CONTENTS_LIST_MAP = {
  //ex: actual page number is 3
  //(3=2+1 => 3-> actual page number, 2-> number in map, 1 -> unit added to overcome 0)
  2: "Kirish",
  4: "Sport psixologiyasining predmeti, vazifalari va rivojlanishi",
  28: "Sport psixologiyasining tadqiqot usullari",
  126: "Sport faoliyatining psixologik tavsifi",
  155: "Sport musobaqalari psixologiyasi",
  177: "Sportda shaxs psixologiyasi",
  214: "Sport treneri shaxsi va faoliyatining psixologik tavsifi",
  241: "Glossariy",
};

//Here is book name
const String BOOK_NAME = "Sport psixologiyasi";

//Here is book writers
const String BOOK_WRITERS = "Ishtayev Javlon Mavlonboyevich";

const String CONTENTS_HEADER = "Mundarija";

const String THANK_YOU = "E'tiboringiz uchun tashakkur!";

const String PICK_PAGE = 'Sahifani tanlang';
