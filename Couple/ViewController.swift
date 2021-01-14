import UIKit

class ViewController: UIViewController {
    //背景
    @IBOutlet weak var BackGround: UIImageView!
    //男生女生身體
    @IBOutlet weak var GirlBody: UIImageView!
    @IBOutlet weak var BoyBody: UIImageView!
    //男生女生頭
    @IBOutlet weak var BoysHead: UIImageView!
    @IBOutlet weak var GirlsHead: UIImageView!
    //男生女生表情
    @IBOutlet weak var GirlsFace: UIImageView!
    @IBOutlet weak var BoysFace: UIImageView!
    //男生女生眼鏡
    @IBOutlet weak var BoysGlasses: UIImageView!
    @IBOutlet weak var GirlsGlasses: UIImageView!
   //男生頭髮選單
    @IBOutlet var HairView: UIView!
    //男生表情選單
    @IBOutlet var FaceView: UIView!
    //男生眼鏡選單
    @IBOutlet var GlassView: UIView!
   //男生身體選單
    @IBOutlet var BodyView: UIView!
    //女生頭選單
    @IBOutlet var GirlHairView: UIView!
    //女生臉選單
    @IBOutlet var GirlFaceView: UIView!
    //女生眼鏡選單
    @IBOutlet var GirlGlassesView: UIView!
    //女生身體選單
    @IBOutlet var GirlBodyView: UIView!
    //背景選單
    @IBOutlet var BackGroundView: UIView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //隱欌所有頁面只留一個
        HairView.isHidden = false
        FaceView.isHidden = true
        GlassView.isHidden = true
        BodyView.isHidden = true
        GirlHairView.isHidden = true
        GirlFaceView.isHidden = true
        GirlGlassesView.isHidden = true
        GirlBodyView.isHidden = true
        BackGroundView.isHidden = true
        
    }

    //男生頭選單
    @IBAction func selectBoyHair(_ sender: UIButton)
    {
        HairView.isHidden = false
        //顯示男生選單其餘則為false
        FaceView.isHidden = true
        GlassView.isHidden = true
        BodyView.isHidden = true
        GirlHairView.isHidden = true
        GirlFaceView.isHidden = true
        GirlGlassesView.isHidden = true
        GirlBodyView.isHidden = true
        BackGroundView.isHidden = true
    
    }
    //將選項三種類頭髮
    @IBAction func changeBoyHair(_ sender: UIButton)
    { let image = sender.currentImage
        BoysHead.image = image
        }
    //第四種則為隨機頭髮
    @IBAction func selectRandomBoyHair(_ sender: UIButton)
    {
        let BoyHairs : [UIImage?] = [UIImage(named: "BH01"),UIImage(named: "BH02"),UIImage(named: "BH03")]
        let number = Int.random(in: 0...2)
       BoysHead.image = BoyHairs[number]
    }
    //男生臉選單
    @IBAction func selectBoyFace(_ sender: UIButton)
    {
        HairView.isHidden = true
        FaceView.isHidden = false
        GlassView.isHidden = true
        BodyView.isHidden = true
        GirlHairView.isHidden = true
        GirlFaceView.isHidden = true
        GirlGlassesView.isHidden = true
        GirlBodyView.isHidden = true
        BackGroundView.isHidden = true
        }
    //男生臉選項
    @IBAction func ChangeBoysFace(_ sender: UIButton)
    { let image = sender.currentImage
        BoysFace.image = image
        }
   //男生眼鏡選單
    @IBAction func selectBoyGlasses(_ sender: UIButton)
    {
        HairView.isHidden = true
        FaceView.isHidden = true
        GlassView.isHidden = false
        BodyView.isHidden = true
        GirlHairView.isHidden = true
        GirlFaceView.isHidden = true
        GirlGlassesView.isHidden = true
        GirlBodyView.isHidden = true
        BackGroundView.isHidden = true
    }
    //男生眼鏡選項
    @IBAction func ChangeBoysGlasses(_ sender: UIButton)
    { let image = sender.currentImage
        BoysGlasses.image = image
       }
     //男生身體選單
    @IBAction func selectBoyBody(_ sender: UIButton)
    { HairView.isHidden = true
        FaceView.isHidden = true
        GlassView.isHidden = true
        BodyView.isHidden = false
        GirlHairView.isHidden = true
        GirlFaceView.isHidden = true
        GirlGlassesView.isHidden = true
        GirlBodyView.isHidden = true
        BackGroundView.isHidden = true
    }
    //男生身體選項
    @IBAction func ChangeBoysBody(_ sender: UIButton)
    {
        let image = sender.currentImage
        BoyBody.image = image
        
    }
    //女生頭髮選單
    @IBAction func selectGirlHead(_ sender: UIButton)
    {
        HairView.isHidden = true
        FaceView.isHidden = true
        GlassView.isHidden = true
        BodyView.isHidden = true
        GirlHairView.isHidden = false
        GirlFaceView.isHidden = true
        GirlGlassesView.isHidden = true
        GirlBodyView.isHidden = true
        BackGroundView.isHidden = true
        
    }
    //女生頭髮選項
    @IBAction func ChangeGirlHead(_ sender: UIButton)
    {
        let image = sender.currentImage
        GirlsHead.image = image
    }
    //第四種則為隨機頭髮
    @IBAction func selectRandomGirlHair(_ sender: UIButton)
    {
        let GirlHairs : [UIImage?] = [UIImage(named: "GH01"),UIImage(named: "GH02"),UIImage(named: "GH03")]
        let number = Int.random(in: 0...2)
       GirlsHead.image = GirlHairs[number]
    }
    //女生臉選單
    @IBAction func selectGirlFace(_ sender: UIButton)
    {
        HairView.isHidden = true
        FaceView.isHidden = true
        GlassView.isHidden = true
        BodyView.isHidden = true
        GirlHairView.isHidden = true
        GirlFaceView.isHidden = false
        GirlGlassesView.isHidden = true
        GirlBodyView.isHidden = true
        BackGroundView.isHidden = true
        
    }
    //女生臉選項
    @IBAction func changeGirlFace(_ sender:UIButton)
    {
        let image = sender.currentImage
        GirlsFace.image = image
        
    }
    //女生眼鏡選單
    @IBAction func selectGirlGlasses(_ sender: UIButton)
    {
        HairView.isHidden = true
        FaceView.isHidden = true
        GlassView.isHidden = true
        BodyView.isHidden = true
        GirlHairView.isHidden = true
        GirlFaceView.isHidden = true
        GirlGlassesView.isHidden = false
        GirlBodyView.isHidden = true
        BackGroundView.isHidden = true
    }
    //女生眼鏡選項
    @IBAction func changeGirlGlasses(_ sender: UIButton)
    {
        let image = sender.currentImage
        GirlsGlasses.image = image
    }
    //女生身體選單
    @IBAction func selectGirlBody(_ sender: UIButton)
    {
        HairView.isHidden = true
        FaceView.isHidden = true
        GlassView.isHidden = true
        BodyView.isHidden = true
        GirlHairView.isHidden = true
        GirlFaceView.isHidden = true
        GirlGlassesView.isHidden = true
        GirlBodyView.isHidden = false
        BackGroundView.isHidden = true
    }
    //女生身體選項
    @IBAction func changeGirlBody(_ sender: UIButton)
    {
        let image = sender.currentImage
        GirlBody.image = image
    }
    //背景選單
    @IBAction func selectBackground(_ sender: UIButton)
    {
        HairView.isHidden = true
        FaceView.isHidden = true
        GlassView.isHidden = true
        BodyView.isHidden = true
        GirlHairView.isHidden = true
        GirlFaceView.isHidden = true
        GirlGlassesView.isHidden = true
        GirlBodyView.isHidden = true
        BackGroundView.isHidden = false
    }
    
    @IBAction func changeBackground(_ sender: UIButton)
    {
        let image = sender.currentImage
        BackGround.image = image
    }
    
    
        
    }
    
    
    
    
    




