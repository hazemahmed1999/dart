import 'dart:io';

class categories {
  var cat_id = [0, 1, 2, 3];
  var cat_name = ['shoes', 't_shirt', 'trouser', 'other'];
  var id_test;
  var flag = 1;

  //###########################################################################

  void insert_cat() {
    try {
      while (flag == 1) {
        print('inter new category id .... ');
        id_test = int.parse(stdin.readLineSync());
        for (var i in cat_id) {
          if (id_test == cat_id[i]) {
            print('Error.....This i  d already used try another one  ');
            break;
          } else if (i == (cat_id.length - 1)) {
            flag = 0;
            cat_id.add(id_test);
            print('enter category name ...');
            cat_name.add(stdin.readLineSync());
            print('successfully added ....');
          }
        }
      }
    } catch (e) {
      print('');
    }
    flag = 1;
  }

  //###########################################################################

  void display_cat() {
    for (var i = 0; i < cat_id.length; i++) {
      print('category id = ${cat_id[i]}    category name = ${cat_name[i]}');
    }
  }

//###########################################################

  void delete_cat() {
    var id, index, delFlag = 1;

    print('enter the id of category U want to delete ... ');
    try {
      while (delFlag == 1) {
        id = int.parse(stdin.readLineSync());

        for (var i = 0; i < cat_id.length; i++) {
          if (id == cat_id[i]) {
            index = cat_id.indexOf(id);
            cat_id.removeAt(index);
            cat_name.removeAt(index);
            print('successfully deleted !!!');
            delFlag = 0;
            break;
          }
        }
        if (delFlag == 1) {
          print('Error.....This id not founded try another one  ');
        }
      }
    } catch (e) {
      print('');
    }
  }

//######################################################################

  void update_cat() {
    var updateId, updateIndex, updateFlag = 1;

    print('enter the id of category U want to update ... ');
    try {
      while (updateFlag == 1) {
        updateId = int.parse(stdin.readLineSync());

        for (var i = 0; i < cat_id.length; i++) {
          if (updateId == cat_id[i]) {
            updateIndex = cat_id.indexOf(updateId);
            cat_id.removeAt(updateIndex);
            cat_name.removeAt(updateIndex);
            //print('successfully deleted !!!');
            updateFlag = 0;
            break;
          }
        }
        if (updateFlag == 1) {
          print('Error.....This id not founded try another one  ');
        }
      }
    } catch (e) {
      print('');
    }

    try {
      while (flag == 1) {
        print('inter new id .... ');
        id_test = int.parse(stdin.readLineSync());
        for (var i in cat_id) {
          if (id_test == cat_id[i]) {
            print('Error.....This id already used try another one  ');
            break;
          } else if (i == (cat_id.length - 1)) {
            flag = 0;
            cat_id.add(id_test);
            print('enter new category name ...');
            cat_name.add(stdin.readLineSync());
            print('successfully updated ....');
          }
        }
      }
    } catch (e) {
      print('');
    }
    flag = 0;
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////

class products extends categories {
  /*var shoes = List.generate(3, (_) => []);
  var t_shirt = List.generate(3, (_) => []);
  var trouser = List.generate(3, (_) => []);
  var other = List.generate(3, (_) => []);
  var unique = List.generate(3, (_) => []);*/
  var shoes = [1, 2];
  var t_shirt = [3, 4];
  var trouser = [5, 6];
  var other = [];
  var pro_id = [1, 2, 3, 4, 5, 6];
  var size = [23, 22, 15, 45, 31, 12];
  var color = ['black', 'green', 'white', 'black', 'black', 'white'];
  var price = [200, 500, 320, 130, 250, 410];

  //############################################################

  void insert_pro() {
    try {
      while (flag == 1) {
        print('inter id of category list .... ');
        id_test = int.parse(stdin.readLineSync());
        for (var i in cat_id) {
          if (id_test == cat_id[i]) {
            flag = 0;
            if (i == 0) {
              print('enter ${cat_name[i]} id ...Except $pro_id');
              id_test = int.parse(stdin.readLineSync());
              if (pro_id.contains(id_test)) {
                print('this id already used .... try another one  ...');
              } else {
                shoes.add(id_test);
                pro_id.add(id_test);
                print('enter ${cat_name[i]} color ...');
                color.add(stdin.readLineSync());
                print('enter ${cat_name[i]} size ...');
                size.add(int.parse(stdin.readLineSync()));
                print('enter ${cat_name[i]} price ...');
                price.add(int.parse(stdin.readLineSync()));
                print('successfully added ....');
                break;
              }
            } else if (i == 1) {
              print('enter ${cat_name[i]} id ...Except $pro_id');
              id_test = int.parse(stdin.readLineSync());
              if (pro_id.contains(id_test)) {
                print('this id already used .... try another one  ...');
              } else {
                t_shirt.add(id_test);
                pro_id.add(id_test);
                print('enter ${cat_name[i]} color ...');
                color.add(stdin.readLineSync());
                print('enter ${cat_name[i]} size ...');
                size.add(int.parse(stdin.readLineSync()));
                print('enter ${cat_name[i]} price ...');
                price.add(int.parse(stdin.readLineSync()));
                print('successfully added ....');
                break;
              }
            } else if (i == 2) {
              print('enter ${cat_name[i]} id ...Except $pro_id');
              id_test = int.parse(stdin.readLineSync());
              if (pro_id.contains(id_test)) {
                print('this id already used .... try another one  ...');
              } else {
                trouser.add(id_test);
                pro_id.add(id_test);
                print('enter ${cat_name[i]} color ...');
                color.add(stdin.readLineSync());
                print('enter ${cat_name[i]} size ...');
                size.add(int.parse(stdin.readLineSync()));
                print('enter ${cat_name[i]} price ...');
                price.add(int.parse(stdin.readLineSync()));
                print('successfully added ....');
                break;
              }
            } else if (i == 3) {
              print('enter ${cat_name[i]} id ...Except $pro_id');
              id_test = int.parse(stdin.readLineSync());
              if (pro_id.contains(id_test)) {
                print('this id already used .... try another one  ...');
              } else {
                other.add(id_test);
                pro_id.add(id_test);
                print('enter ${cat_name[i]} color ...');
                color.add(stdin.readLineSync());
                print('enter ${cat_name[i]} size ...');
                size.add(int.parse(stdin.readLineSync()));
                print('enter ${cat_name[i]} price ...');
                price.add(int.parse(stdin.readLineSync()));
                print('successfully added ....');
                break;
              }
            }
          } else if (i == (cat_id.length - 1)) {
            print(
                'Error.....This id of category not founded ... try another one  ');
          }
        }
      }
    } catch (e) {
      print('');
    }
    flag = 1;
  }

//########################################################################

  void display_pro() {
    print('enter id of category U need....  ');
    for (var i = 0; i < cat_id.length; i++) {
      print('category id = ${cat_id[i]}    category name = ${cat_name[i]}');
    }
    var iid;
    iid = int.parse(stdin.readLineSync());
    if (cat_id.contains(iid)) {
      print('all ${cat_name[cat_id.indexOf(iid)]}s');
      print('id-color-size-price');
      if (cat_name[cat_id.indexOf(iid)] == 'shoes') {
        for (var i = 0; i < shoes.length; i++) {
          print(
              '${shoes[i]}  ${color[pro_id.indexOf(shoes[i])]}  ${size[pro_id.indexOf(shoes[i])]}   ${price[pro_id.indexOf(shoes[i])]}');
        }
        //print('${shoes[pro_id.indexOf(iid)]}  ${color[pro_id.indexOf(iid)]}  ${size[pro_id.indexOf(iid)]}   ${price[pro_id.indexOf(iid)]}');
      } else if (cat_name[cat_id.indexOf(iid)] == 't_shirt') {
        for (var i = 0; i < t_shirt.length; i++) {
          print(
              '${t_shirt[i]}  ${color[pro_id.indexOf(t_shirt[i])]}  ${size[pro_id.indexOf(t_shirt[i])]}   ${price[pro_id.indexOf(t_shirt[i])]}');
        }
      } else if (cat_name[cat_id.indexOf(iid)] == 'trouser') {
        for (var i = 0; i < trouser.length; i++) {
          print(
              '${trouser[i]}  ${color[pro_id.indexOf(trouser[i])]}  ${size[pro_id.indexOf(trouser[i])]}   ${price[pro_id.indexOf(trouser[i])]}');
        }
      } else {
        for (var i = 0; i < other.length; i++) {
          print(
              '${other[i]}  ${color[pro_id.indexOf(other[i])]}  ${size[pro_id.indexOf(other[i])]}   ${price[pro_id.indexOf(other[i])]}');
        }
      }
    } else {
      print('id not founded...');
    }
  }

  //###########################################################################

  void delete_pro() {
    var id, index, delFlag = 1;

    print('enter the product id U want to delete ... ');
    try {
      while (delFlag == 1) {
        id = int.parse(stdin.readLineSync());

        for (var i = 0; i < pro_id.length; i++) {
          if (id == pro_id[i]) {
            index = pro_id.indexOf(id);
            pro_id.removeAt(index);
            size.removeAt(index);
            color.removeAt(index);
            price.removeAt(index);
            if (shoes.contains(id)) {
              shoes.remove(id);
            }
            if (t_shirt.contains(id)) {
              t_shirt.remove(id);
            }
            if (trouser.contains(id)) {
              trouser.remove(id);
            }
            if (other.contains(id)) {
              other.remove(id);
            }
            print('successfully deleted !!!');
            delFlag = 0;
            break;
          }
        }
        if (delFlag == 1) {
          print('Error.....This id not founded try another one  ');
        }
      }
    } catch (e) {
      print('');
    }
  }

  void displayAll() {
    for (var i = 0; i < pro_id.length; i++) {
      if (i == 0) {
        print('           ***********     all choes    ***********');
        print('id-color-size-price');
      }
      if (i == shoes.length) {
        print('           ***********     all t-shirts    ***********');
        print('id-color-size-price');
      }
      if (i == shoes.length + t_shirt.length) {
        print('           ***********     all trousers    ***********');
        print('id-color-size-price');
      }
      if (i == shoes.length + t_shirt.length + trouser.length) {
        print('           ***********     all other products    ***********');
        print('id-color-size-price');
      }
      print('${pro_id[i]}  ${color[i]}  ${size[i]}   ${price[i]}');
    }
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////

void main(List<String> arguments) {
  var cat = categories();
  var pro = products();

  var test;
  while (test != 'n') {
    print('                   hello               \n');
    print('if U want to insert new category press      1 ');
    print('if U want to insert new product press       2 ');
    print('if U want to display categories press       3 ');
    print('if U want to display product press          4 ');
    print('if U want to display all products press     5 ');
    print('if U want to update category press          6 ');
    print('if U want to delete category press          7 ');
    print('if U want to delete product press           8 ');

    var num = int.parse(stdin.readLineSync());

    if (num == 1) {
      cat.insert_cat();
      print('pres (n) to end or any key to continue');
      test = stdin.readLineSync();
      if (test == 'n') {
        exit(0);
      } else {
        continue;
      }
    } else if (num == 2) {
      pro.insert_pro();
      print('pres (n) to end or any key to continue');
      test = stdin.readLineSync();
      if (test == 'n') {
        exit(0);
      } else {
        continue;
      }
    } else if (num == 3) {
      cat.display_cat();
      print('pres (n) to end or any key to continue');
      test = stdin.readLineSync();
      if (test == 'n') {
        exit(0);
      } else {
        continue;
      }
    } else if (num == 4) {
      pro.display_pro();
      print('pres (n) to end or any key to continue');
      test = stdin.readLineSync();
      if (test == 'n') {
        exit(0);
      } else {
        continue;
      }
    } else if (num == 5) {
      pro.displayAll();
      print('pres (n) to end or any key to continue');
      test = stdin.readLineSync();
      if (test == 'n') {
        exit(0);
      } else {
        continue;
      }
    } else if (num == 6) {
      cat.update_cat();
      print('pres (n) to end or any key to continue');
      test = stdin.readLineSync();
      if (test == 'n') {
        exit(0);
      } else {
        continue;
      }
    } else if (num == 7) {
      cat.delete_cat();
      print('pres (n) to end or any key to continue');
      test = stdin.readLineSync();
      if (test == 'n') {
        exit(0);
      } else {
        continue;
      }
    } else if (num == 8) {
      pro.delete_pro();
      print('pres (n) to end or any key to continue');
      test = stdin.readLineSync();
      if (test == 'n') {
        exit(0);
      } else {
        continue;
      }
    }
  }
}

