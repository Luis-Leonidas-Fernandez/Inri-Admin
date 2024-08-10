// Is Open Model

class IsOpenModel {
  
    bool? isOpen;
    

    IsOpenModel({
        this.isOpen,
        
    });
   

    factory IsOpenModel.fromJson(Map<String, dynamic> json) => IsOpenModel(
        isOpen: json["isOpen"]?? false,
        
    );

    Map<String, dynamic> toJson() => {
        "isOpen": isOpen,
        
    };
}
