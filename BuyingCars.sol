//SPDX-License-Identifier:GPL-3.0

pragma solidity ^0.8.6;

import "./Dealer.sol";

// Write a smart contract for buying cars from a dealer         
//   → The dealer should be set as the contract owner                    
//    → only dealer should be able to add new cars                                    
//     → Buyers should be able to view the details of the car          
//  → buyers should pay for the car in ethers in order to purchase it


contract BuyingCars is Dealer{
    address private dealer;

        enum carAvailability{   //carstatus
            BOOKED,//0
            VACANT//1
        }
        struct CarBrands{
            string carModel;
            string color;
            uint price;
            //carfeatures;
        }
        string[] CarModelList;
        mapping(string => CarBrands) carModel;
        mapping(string => carAvailability)statusOfCar;
        mapping(string => address) public mapBooking;

        function addCarDetails(
            string memory _carName,
            string memory _carModel,
            string memory _color,
            uint _price
        )
        public isDealer {
            carModel[_carName] = CarBrands(_carModel,_color,_price);
            statusOfCar[_carName] = carAvailability.VACANT;
            CarModelList.push(_carName);            
        }
       
       function getCarsList()public view returns(string[] memory){
            return CarModelList;
        }

         function bookCar(string memory _carName)public payable isCorrectAmount isVacant(_carName) {
            (bool success,) = Dealer_Address.call{value:msg.value}("");
            require(success == true,"Transaction not successfull");
            mapBooking[_carName]= msg.sender;
            statusOfCar[_carName]= carAvailability.BOOKED;
        }

        function checkcarAvailability(string memory _carName)public view returns(carAvailability) {
            return statusOfCar[_carName];
        }

        function viewCarDetails(string memory _carName)public view returns(CarBrands memory) {
            return carModel[_carName];
        }
        function canceltheCar(string memory _carName) public isowner(_carName){
            delete mapBooking[_carName];
            statusOfCar[_carName]=carAvailability.VACANT;

        }

        modifier isVacant(string memory _carName){
            require(statusOfCar[_carName]==carAvailability.VACANT,"can't book car");
            _;
        }

        modifier  isowner(string memory _carName){
            require (mapBooking[_carName]== msg.sender,"Can't checkout, not the owner");
            _;
        }
        function getDealerBalance() public view returns(uint){
            return Dealer_Address.balance;
        }
        


}

