import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:contact_list_app/widgets/contact_tile.dart';
import 'package:contact_list_app/model/contact_data.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Consumer<ContactData>(
      builder: ((context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: const Text('Contact List',
                style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: ()async{
                  Provider.of<ContactData>(context, listen: false).shuffleContacts();
                },
                child: ListView.builder(
                  itemCount: value.contacts.length,
                  itemBuilder: (context, index){
                    return Container(
                      padding:const EdgeInsets.only(left: 20,right: 10,top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:  [
                          const CircleAvatar(
                            backgroundColor: Colors.cyan,
                            radius: 35,
                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6SGtRMnPSUTD4huM079Ep-xL68Mt2eyuzpA&usqp=CAU'),
                          ),
                          ContactTile(name: value.contacts[index].name,
                          address: value.contacts[index].address),
                        ],
                      ),
                    );

                  }
                  ),
              ),
            ),
          ],
        );
      } ),
    );



      
  }
}