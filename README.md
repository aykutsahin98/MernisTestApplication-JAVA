# MERNİS ( Kimlik Doğrulama Servisi ) Projeye Ekleme

### Üst menüden, "File - New - Project"
![1](https://user-images.githubusercontent.com/36954450/118634858-a9d59600-b7db-11eb-81a1-8d3c9c04c979.png)


* * *

### Wizards: kısmında "Java Project" yazıp, alt taraftan "Java Project" yazanı seçip "Next" butonuna basıyoruz.
![2](https://user-images.githubusercontent.com/36954450/118634861-aa6e2c80-b7db-11eb-9dc5-87d1ac0986fc.png)

* * *

### Project name "MernisTest" olarak açıyorum, "Use an execution environment JRE:" kısmından JavaSE-1.8 seçiyoruz. (Mernis servisi için stabil sürüm) ve "Finish" diyoruz.
![3](https://user-images.githubusercontent.com/36954450/118634863-aa6e2c80-b7db-11eb-8775-3204974d7675.png)

* * *

### Module name "MernisTest" olarak belirledim. "Don't Create" butonuna basıyorum ve projemi oluşturuyorum.
![4](https://user-images.githubusercontent.com/36954450/118634865-ab06c300-b7db-11eb-8c65-a47ce2343ea9.png)

* * *

### Oluşan projeme sağ tıklayıp, "New - Other" seçiyorum.
![5](https://user-images.githubusercontent.com/36954450/118634869-ab06c300-b7db-11eb-93d0-19af0fa68575.png)


* * *

### Wizards: kısmına "Web Service Client" yazıp, "Web Services altında ki Web Service Client" olanı seçiyorum ve "Next" butonuna basıyorum.
![6](https://user-images.githubusercontent.com/36954450/118634842-a7733c00-b7db-11eb-9391-00c2c053d73d.png)

* * *

### Service definition: kısmına "https://tckimlik.nvi.gov.tr/Service/KPSPublic.asmx?WSDL" adresini yapıştırıyorum ve "Finish" butonuna basıyorum.
![7](https://user-images.githubusercontent.com/36954450/118634846-a8a46900-b7db-11eb-95eb-5e43a4f2fa17.png)

* * *

### Yine projemde "src" klasörüne sağ tıklayarak "New - Class" seçiyorum.
![8](https://user-images.githubusercontent.com/36954450/118634851-a8a46900-b7db-11eb-9532-15d5e588b59f.png)

* * *

### Package: kısmını boş bırakıyorum, Name: kısmına "Main" yazıyorum, [ ] public static void main. yazan kısmı seçiyorum ve "Finish" butonuna basıyorum.
![9](https://user-images.githubusercontent.com/36954450/118634854-a93cff80-b7db-11eb-8461-8d1c7bd16115.png)

* * *

### Kırmızı çerçeveye aldığım her şeyi aynı şekilde yazarak projenizi mernis kimlik kontrolü ile birlikte çalıştırabilirsiniz.
![10](https://user-images.githubusercontent.com/36954450/118634856-a9d59600-b7db-11eb-8e1d-14103a3abf92.png)

