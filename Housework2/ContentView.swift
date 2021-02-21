//
//  ContentView.swift
//  Housework2
//
//  Created by 杨睿文 on 2/21/21.
//

import SwiftUI

struct ContentView: View {

    
    @State var user1 = "mom"
    @State var user2 = "dad"
    @State var score1 = 0
    @State var score2 = 0
    @State var name1 = "cooking1"
    @State var name2 = "dogwalking1"
    @State var name3 = "babynursing1"
    @State var name4 = "laundry1"
    @State var name5 = "windowcleaning1"
    @State var name6 = "toiletcleaning1"
    @State var name7 = "trashdumping1"
    @State var name8 = "ironing1"
    

    var mode = 1

    var mode1 = [String](arrayLiteral: "cooking", "dog walking","baby nursing", "laundry","window cleaning","toilet cleaning","trash dumping","ironing")
    var mode1_points = [Int](arrayLiteral: 3,2,5,1,1,4,1,1)
    var mode2 = [String](arrayLiteral: "cooking", "cleaning", "laundry","babysitting")
    var mode2_points = [Int](arrayLiteral: 3,2,1,5)

    var congrats:String{
        user1 + ", Well done! You just finished "
    }



    var body: some View {
    
       VStack{
        Spacer()
        Text("HouseWE")
            .font(.title)
            .foregroundColor(Color.purple).bold()
        Spacer()
        HStack{
        Spacer()
        Button(action: {
            name1 = "cooking2"
            score1 += mode1_points[1]
            let diffInScore = score1 - score2
            print(congrats + "cooking :)")
               if diffInScore > 20{
               print("You made" + user1 + "do too much work!!")
               }else if diffInScore < 20{
               print("You made" + user2 + "do too much work!!")
               }
        }, label: {
            Image(name1).resizable().aspectRatio(contentMode: .fit)
        })
        Image("purple").resizable().aspectRatio(contentMode: .fit)
            
            Spacer()
            Button(action: {
                name2="dogwalking2"
                score1 += mode1_points[2]
                let diffInScore = score1 - score2
                print(congrats + "dogwalking :)")
                   if diffInScore > 20{
                   print("You made" + user1 + "do too much work!!")
                   }else if diffInScore < 20{
                   print("You made" + user2 + "do too much work!!")
                   }
            }, label: {
                Image(name2).resizable().aspectRatio(contentMode: .fit)
            })
            Image("purple").resizable().aspectRatio(contentMode: .fit)
            
            Spacer()
            Button(action: {
                name3 = "babynursing2"
                score1 += mode1_points[3]
                let diffInScore = score1 - score2
                print(congrats + "baby nursing :)")
                   if diffInScore > 20{
                   print("You made" + user1 + "do too much work!!")
                   }else if diffInScore < 20{
                   print("You made" + user2 + "do too much work!!")
                   }
            }, label: {
                Image(name3).resizable().aspectRatio(contentMode: .fit)
            })
            Spacer()


            
    }
        Spacer()
        HStack{
            Spacer()
            Image("purple").resizable().aspectRatio(contentMode: .fit)
            Button(action: {
                name4 = "laundry2"
                score1 += mode1_points[4]
                let diffInScore = score1 - score2
                print(congrats + "laundry :)")
                   if diffInScore > 20{
                   print("You made" + user1 + "do too much work!!")
                   }else if diffInScore < 20{
                   print("You made" + user2 + "do too much work!!")
                   }
            }, label: {
                Image(name4).resizable().aspectRatio(contentMode: .fit)
            })
            Image("purple").resizable().aspectRatio(contentMode: .fit)
                
                Spacer()
                Button(action: {
                    name5 = "windowcleaning2"
                    score1 += mode1_points[5]
                    let diffInScore = score1 - score2
                    print(congrats + "window cleaning :)")
                       if diffInScore > 20{
                       print("You made" + user1 + "do too much work!!")
                       }else if diffInScore < 20{
                       print("You made" + user2 + "do too much work!!")
                       }
                }, label: {
                    Image(name5).resizable().aspectRatio(contentMode: .fit)
                })
                Image("purple").resizable().aspectRatio(contentMode: .fit)
            Spacer()
            
        }
        Spacer()
        HStack{
            Spacer()
            Button(action: {
                name6 = "toiletcleaning2"
                score1 += mode1_points[6]
                let diffInScore = score1 - score2
                print(congrats + "toilet cleaning :)")
                   if diffInScore > 20{
                   print("You made" + user1 + "do too much work!!")
                   }else if diffInScore < 20{
                   print("You made" + user2 + "do too much work!!")
                   }
            }, label: {
                Image(name6).resizable().aspectRatio(contentMode: .fit)
            })
            Image("purple").resizable().aspectRatio(contentMode: .fit)
                
                Spacer()
                Button(action: {
                    name7 = "trashdumping2"
                    score1 += mode1_points[7]
                    let diffInScore = score1 - score2
                    print(congrats + "trash dumping :)")
                       if diffInScore > 20{
                       print("You made" + user1 + "do too much work!!")
                       }else if diffInScore < 20{
                       print("You made" + user2 + "do too much work!!")
                       }
                }, label: {
                    Image(name7).resizable().aspectRatio(contentMode: .fit)
                })
                Image("purple").resizable().aspectRatio(contentMode: .fit)
                
                Spacer()
                Button(action: {
                    name8 = "ironing2"
                    score1 += mode1_points[8]
                    let diffInScore = score1 - score2
                    print(congrats + "ironing :)")
                       if diffInScore > 20{
                       print("You made" + user1 + "do too much work!!")
                       }else if diffInScore < 20{
                       print("You made" + user2 + "do too much work!!")
                       }
                }, label: {
                    Image(name8).resizable().aspectRatio(contentMode: .fit)
                })
                Spacer()

        }
        Spacer()
        HStack{
            Spacer()
            Image("overview1").resizable().aspectRatio(contentMode: .fit).padding(.top, 40.0).frame(width: 260.0, height: 260.0)
            Spacer()
            VStack{
                HStack{
                    Text("Score 1:")
                        .padding(.bottom, 60.0)
                    Text(String(score1))
                        .font(.largeTitle)
                        .foregroundColor(Color.purple)
                        .padding(.bottom, 60.0)
                }
                HStack{
                    Text("Score 2:")
                    Text(String(score2))
                        .font(.largeTitle)
                        .foregroundColor(Color.purple)
                }
            }
            Spacer()
        }
       
    

       }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
       }
