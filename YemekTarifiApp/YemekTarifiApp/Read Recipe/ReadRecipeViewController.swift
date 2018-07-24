//
//  ReadRecipeViewController.swift
//  YemekTarifiApp
//
//  Created by Halil Özel on 24.07.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class ReadRecipeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var selectedRow = 0
    
    var menuImages = [UIImage(named: "mercimekcorbasi"),
                      UIImage(named: "tavuksis"),
                      UIImage(named: "bulgurpilavi"),
                      UIImage(named: "ayran"),
                      UIImage(named: "cobansalata"),
                      UIImage(named: "kunefe")]
    
    var menuCooks = ["Derin bir tencereye 3 yemek kaşığı sıvı yağ ekleyin. İri doğranmış 1 adet büyük soğanı sıvı yağ ile birlikte kavurun.Kavrulan soğanlara 1 yemek kaşığı unu ekleyin ve kokusu çıkıp, renk alana kadar kavurma işlemini sürdürün.İri parçalar halinde doğradığınız birer adet havuç ve patatesi tencereye aktarıp karıştırmaya devam edin.Tuz, karabiber ve bol suda yıkadıktan sonra suyunu süzdürdüğünüz 1,5 su bardağı mercimeğide ilave edin ve son kez güzelce karıştırın.6 su bardağı suyu da tencereye ilave ettikten sonra orta ateşte patates ve havuçlar yumuşayana kadar yaklaşık 40 dakika pişirin.Çorba piştikten sonra pürüzsüz bir kıvam alması için; el blenderından geçirin. 5 dakika daha pişirdikten sonra ocaktan alın.3 yemek kaşığı sıvı yağ ve 2 yemek kaşığı tereyağını bir tavada kızdırın. Üzerine 1 tatlı kaşığı toz kırmızı biberi ekleyin ve 2 dakika yağı kızdırdıktan sonra ocaktan alın.Çorbayı bir kaseye alın ve üzerine kızdırdığınız yağdan gezdirip servis edin.",
                     "Kemiksiz olarak satın aldığınız fileto tavuk göğsünü tavuk şiş hazırlamak için iri küpler halinde kesin.Kabuğunun kolayca soyulabilmesi sıcak suda beklettiğiniz arpacık soğanları halka halka dilimleyin. Ortadan ikiye kesip çekirdeklerini çıkardığınız kırmızı biberi küçük parçalar halinde kesin.Tavuk şişin marinasyon karışımı için; zeytinyağı, taze sıkılmış limon suyu, yoğurt, toz kişniş, taze çekilmiş tane karabiber ve defne yaprağını tavuk etleriyle birlikte derin bir kapta harmanlayın.En az 20 dakika marinasyon karışımında beklettiğiniz tavuk parçalarını, bir tavuk, bir arpacık soğan dilimi, bir kırmızı biber parçası olmak üzere tahta şişlere dizin.Baharatlar ve zeytinyağıyla çeşnilenen tavuk şişleri, önceden kızdırdığınız ızgara ya da ızgara izli yağsız tavada yüksek ateşte, aralarda ters çevirerek kızartın.Bütün olarak ya da servis tabağına tahta şişlerinden sıyırdığınız tavuk etlerini sıcak olarak bekletmeden servis edin. Sevdiklerinizle paylaşın.",
                     "Soğanın kabuklarını soyun ve ince ince doğrayın.Domatesleri rendeleyin. Sarımsakların da kabuklarını soyarak rendeleyin.Orta boy bir tencerenin içerisine tereyağı ve zeytinyağını aktarın. Tereyağı eridikten sonra soğanları ve sarımsakları ilave ederek kavurmaya başlayın.Soğanların hemen ardından da salçayı ilave edin. Üzerine bulguru da ekleyerek güzelce kavurmaya devam edin.Ardından domatesleri ekleyerek karıştırın. Tuz ve karabiberini de bu sırada ilave edin.Üzerine su ekleyerek karıştırın ve kapağını kapatarak orta ateşte suyunu çekene kadar pişirmeye bırakın.Ortalama 10-15 dakika sonra suyunu çeken bulgur pilavının altını kapatın ve oda sıcaklığında 20 dakika demlenmeye bırakın.Demlenen pilavınızı güzelce karıştırın ve servis edin.",
                     "Çorbanın yapımında kullanacağınız aşurelik buğday ve nohudu, bir gece önceden ayrı ayrı kaplarda suya basın.İyice şişen buğdayı derin bir tencereye alın. Üzerine 6 su bardağı kadar içme suyu ekledikten sonra orta ateşte haşlayın. Buğdayın haşlama suyunu çorba yapımında kullanacağız, unutmayın.Nohudu ayrı bir tencereye alın ve üzerini geçecek kadar su ilavesiyle orta ateşte haşlayın.Çorbaya kıvam ve lezzetini verecek süzme yoğurdu, tuz ilavesiyle küçük bir kapta pürüzsüz bir hal alana kadar karıştırın.Haşlanan nohutları, suyunu süzdükten sonra buğday tenceresine aktarın ve hafif bir şekilde karıştırın.Buğdayların pişip, pişmediğini kontrol ettikten sonra çorba tenceresini ocaktan alın ve soğuması için bir kenarda bekletin.Soğuyan, haşlanmış nohutlu ve buğdaylı çorba karışımını, çırpılmış süzme yoğurt ve nane ekleyerek karıştırın.",
                     "Çoban salatayı hazırlamak için; sap kısımlarını aldığınız sulu ve orta boy domatesleri ince ince doğrayın.Kabuğunu soyduğunuz salatalıkları domateslerle uyumlu olacak şekilde kesin.Ortadan ikiye kestiğiniz ve çekirdeklerini çıkardığınız yeşil biberleri yarım ay şeklinde kesin.Kuru soğanı küçük parçalar halinde ya da arzuya göre ince piyazlık doğrayın. Maydanozu incecik kıyın.Kuru soğan dışında kalan doğranmış tüm malzemeyi salata kabında karıştırın. Servis tabağına aldığınız salata üzerine doğranmış kuru soğanları yerleştirin.Salatanın sosu için; zeytinyağı, taze sıkılmış limon suyu ve tuzu küçük bir kapta karıştırdıktan sonra salatanın üzerine gezdirin.Sosuyla harmanladığınız salatayı, sulanmaması için bekletmeden servis edin. Her türlü ana yemek yanında sevdiklerinizle paylaşın.",
                     "Sıcak künefenin üzerine gezdireceğiniz soğumuş şerbeti hazırlamak için; toz şeker ve suyu tencereye alın.Tel kadayıfı geniş bir tepsiye alın. Elinizle tel tel açıp küçük parçalar haline getirin. Oda sıcaklığında beklettiğiniz tereyağını kattıktan sonra kadayıf tellerini açmaya devam ederek tereyağını kadayıflara yedirin.Altın sarısı bir renk alan tereyağlı kadayıf karışımını iki eşit parçaya ayırın.Künefeyi pişirmek için; oda sıcaklığında beklettiğiniz tereyağını küçük bir kapta pekmezle karıştırın.Kalan tereyağlı kadayıf karışımıyla peynirlerin üzerini bastırarak kaplayın. Üzerine kalan pekmezli tereyağı karışımını sürün.Ocaktan almak üzere olduğunuz nar gibi kızaran künefenin üzerine soğuk şerbeti gezdirdikten sonra ocaktan alın.Kısa bir süre dinlenen ve şerbetini çeken künefeyi, dilimledikten sonra arzuya göre sıcak ya da ılık olarak sevdiklerinizle paylaşın."]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // tableview burada kullanılacak diye belirtmemiz gerekir.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.tableFooterView = UIView()
        
        //row height değerlerini otomatik belirlemek için
        tableView.estimatedRowHeight = 220
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // kac adet section olacak
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    // section içinde kaç adet alt section olacak
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    // celllerin gösterilmesi
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReadRecipeImageCell", for: indexPath) as! ReadRecipeImageTableViewCell
            
            // imagelerin değiştirilmesi ile ilgili işlemler
            cell.recipeImageView.image = menuImages[selectedRow]
            
            
            
            return cell
        }else{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReadRecipeCell", for: indexPath) as! ReadRecipeTableViewCell
            
             cell.cookReadRecipe.text = menuCooks[selectedRow]
            
            return cell
        }
        
    }
    
    // scroll özelliğini kapatarak bu işlemi doğru şekilde yapıyoruz.
    
    // row height değerleri için zorunlu 2 adet function
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    
    
    
    
    
    
   
   

}
