//Solidity Blockchain Internship Assignment – SimplyFI 
 
//Assignment 1: Escrow Services for Online Marketplaces. 
 
pragma solidity ^0.8.0; 
 
contract EscrowServices { 
 struct Item{ 
  string name; 
  address payable seller; 
  address buyer; 
  uint256 price; 
  bool item_sold; 
  bool confirms_delivery; 
 } 
 
 mapping( string => Item) public Listed_Items; 
 
 function Item_List ( string memory Item_Name, uint256 Item_Price) external { 
require ( Listed_Items [Item_Name].seller == address(0), "The Item Listed Already Exists"); 
Listed_Items[Item_Name] = Item ({ 
  name: Item_Name, 
  seller: payable(msg.sender), 
  buyer: address(0), 
  price: Item_Price, 
  item_sold: false, 
  confirms_delivery: false 
  }); 
} 
  
function buy(string memory Item_Name) external payable{ 
Item storage item = Listed_Items[Item_Name]; 
require(item.seller != address(0), "Item not found!"); 
require(!item.item_sold, "Item already sold!"); 
require (msg.value == item.price, "Incorrect Amount Payed"); 
item.buyer = msg.sender; 
item.item_sold = true; 
} 
function confirmsDelivery( string memory Item_Name) external {  
Item storage item = Listed_Items[Item_Name]; 
require (item.buyer == msg.sender , "Delivery can only be confirmed by the buyer!"); 
require (item.item_sold, "Item is not sold yet."); 
require(!item.confirms_delivery, "Delivery is already confirmed."); 
item.confirms_delivery = true; 
item.seller.transfer(item.price); 
} 
}