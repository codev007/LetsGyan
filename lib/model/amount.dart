class Amount {
  String ques;
  String price;

  Amount({this.ques, this.price});

  static List<Amount> getPrice() {
    return <Amount>[
      Amount(ques: "1", price: "10"),
      Amount(ques: "2", price: "15"),
      Amount(ques: "4", price: "25"),
      Amount(ques: "6", price: "32"),
      Amount(ques: "8", price: "40"),
    ];
  }
}