Vim�UnDo� �E��1�dK'/����v���I�s9ra�3�n�w   e                                  ex��    _�                            ����                                                                                                                                                                                                                                                                                                                                                             ex�4     �                   �               5��                    �                       I      5�_�                            ����                                                                                                                                                                                                                                                                                                                                       �           v   C    ex��    �                   �               �               �   class BE_Category:   5    def __init__(self, name, root, tree, space_name):           self.name = name           self.root = root           self.tree = tree           self.items = {}   %        self.__load_items(space_name)   F        self.cat_names = self.__load_exist_cat_names(space_name, root)          J    # creates new category (by adding it to xml file) + checks if category   '    # with the same names exists or not   (    def _add_category(self, space_name):   '        if self.name in self.cat_names:   O            raise ValueError(f"A category named '{self.name}' already exists!")   '        self.__save_cat_name(self.name)   H        space_element = self.root.find(f"./space[@name='{space_name}']")   %        if space_element is not None:   D            ET.SubElement(space_element, "category", name=self.name)   Y            self.tree.write('./data_files/data.xml')  # Save the modified XML to the file   K            print(f"Added category '{self.name}' to space '{space_name}'.")          +    def _remove_category(self, space_name):   N        cat_element = self.root.find(f"./space/category[@name='{self.name}']")   #        if cat_element is not None:   4            # remove the item from the XML structure   P            self.root.find(f"./space[@name='{space_name}']").remove(cat_element)   4            self.tree.write('./data_files/data.xml')   O            print(f"Removed category '{self.name}' from space '{space_name}'.")   -            self.__remove_cat_name(self.name)               self.items = {}          '    def __load_items(self, space_name):   H        space_element = self.root.find(f"./space[@name='{space_name}']")   %        if space_element is not None:   U            category_element = space_element.find(f"./category[@name='{self.name}']")   ,            if category_element is not None:   H                for item_element in category_element.findall(".//item"):   8                    item_name = item_element.get("name")   ;                    quantity = item_element.get("quantity")   5                    price = item_element.get("price")   3                    note = item_element.get("note")   5                    count = item_element.get("count")       K                    item = BE_Item(item_name, quantity, price, note, count)   0                    self.items[item_name] = item          7    def __load_exist_cat_names(self, space_name, root):           cat_names = []       C        space_element = root.find(f"./space[@name='{space_name}']")   %        if space_element is not None:   F            for category_element in space_element.findall("category"):   <                category_name = category_element.get("name")   /                cat_names.append(category_name)               return cat_names   
             (    def __save_cat_name(self, cat_name):   '        self.cat_names.append(cat_name)                  *    def __remove_cat_name(self, cat_name):   &        if cat_name in self.cat_names:   +            self.cat_names.remove(cat_name)                  .    def edit_name(self, new_name, space_name):   d        cat_element = self.root.find(f"./space[@name='{space_name}']/category[@name='{self.name}']")   #        if cat_element is not None:   -            cat_element.set("name", new_name)   4            self.tree.write('./data_files/data.xml')   f            print(f"Updated name for category '{self.name}' in space '{space_name}' to '{new_name}'.")   -            self.__remove_cat_name(self.name)                 *            if new_name in self.cat_names:   S                raise ValueError(f"A category named '{self.name}' already exists!")   *            self.__save_cat_name(new_name)                               self.name = new_name          @    def add_item(self, item_name, quantity, price, note, count):   ?        item = BE_Item(item_name, quantity, price, note, count)   7        item._add_item(self.name, self.root, self.tree)   $        self.items[item_name] = item          %    def remove_item(self, item_name):   #        if item_name in self.items:   (            item = self.items[item_name]   >            item._remove_item(self.root, self.tree, self.name)   %            del self.items[item_name]              2    def edit_item_name(self, item_name, new_name):   #        if item_name in self.items:   ,            item = self.items.pop(item_name)   E            item.edit_name(new_name, self.name, self.root, self.tree)   '            self.items[new_name] = item                      4    def edit_item_price(self, item_name, new_price):   #        if item_name in self.items:   (            item = self.items[item_name]   G            item.edit_price(new_price, self.name, self.root, self.tree)          .    def edit_item_note(self, item_name, note):   #        if item_name in self.items:   (            item = self.items[item_name]   A            item.edit_note(note, self.name, self.root, self.tree)                             0    def item_increase_quantity(self, item_name):   #        if item_name in self.items:   (            item = self.items[item_name]   C            item.increase_quantity(self.name, self.root, self.tree)       ,    # if quantity went to 0, item is deleted   -    def item_lower_quantity(self, item_name):   #        if item_name in self.items:   (            item = self.items[item_name]   G            flag = item.lower_quantity(self.name, self.root, self.tree)                              if flag == 0:   +                self.remove_item(item_name)                  '    def item_up_count(self, item_name):   #        if item_name in self.items:   (            item = self.items[item_name]   (            new_count = item.get_count()               new_count += 1   I            item.change_count(new_count, self.name, self.root, self.tree)       *    def item_lower_count(self, item_name):   #        if item_name in self.items:   (            item = self.items[item_name]   (            new_count = item.get_count()               new_count -= 1   I            item.change_count(new_count, self.name, self.root, self.tree)    5��            �                       I              �                    d                       ,      5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             ex�7    �      
   �       �                 �                  �   -   /           �   8   :           �   ;   =           �   ?   A           �   G   I           �   K   M           �   M   O           �   R   T           �   X   Z           �   ^   `           �   c   e           �   h   j           �   i   k           �   t   v           �   w   y           5��                                               �                          �                     �                          �                     �    -                      �                     �    8           
           %
      
               �    ;                      w
                     �    ?                      �
                     �    G                      �                     �    K                      R                     �    M                      t                     �    R                      S                     �    X                      ,                     �    ^                                           �    c                      �                     �    h                      �                     �    i                      �                     �    t                      ^                     �    w                      �                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             ex�1     �              �                         #pos: self.pos[0] + 5, 05��                                                5��