//
//  ProfileViewController.swift
//  OzinsheDemo
//
//  Created by Нурсат Шохатбек on 12.01.2024.
//

import UIKit
import Localize_Swift

class ProfileViewController: UIViewController, LanguageProtocol {
    @IBOutlet weak var myProfileLabel: UILabel!
    
    @IBOutlet weak var languageButton: UIButton!
    
    @IBOutlet weak var languageLabel: UILabel!
    
    @IBOutlet weak var privateInformationButton: UIButton!
    
    @IBOutlet weak var privateInformationLabel: UILabel!
    
    @IBOutlet weak var passwordButton: UIButton!
    
    @IBOutlet weak var rulesButton: UIButton!
    
    @IBOutlet weak var modeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        configureViews()
    }
    
    func configureViews() {
        myProfileLabel.text = "MY_PROFILE".localized()
        languageButton.setTitle("LANGUAGE".localized(), for: .normal)
        privateInformationButton.setTitle("PRIVATE INFORMATION".localized(), for: .normal)
        privateInformationLabel.text = "PROCESSING".localized()
        passwordButton.setTitle("PASSWORD".localized(), for: .normal)
        rulesButton.setTitle("RULES".localized(), for: .normal)
        modeButton.setTitle("MODE".localized(), for: .normal)
        
        if Localize.currentLanguage() == "ru" {
            languageLabel.text = "Русский"
        }
        if Localize.currentLanguage() == "kk" {
            languageLabel.text = "Қазақша"
        }
        if Localize.currentLanguage() == "en" {
            languageLabel.text = "English"
        }
    }
    
    
    @IBAction func languageShow(_ sender: Any) {
        let languageVc = storyboard?.instantiateViewController(withIdentifier: "LanguageViewController") as! LanguageViewController
        
        languageVc.modalPresentationStyle = .overFullScreen
        
        languageVc.delegate = self
        
        present(languageVc, animated: true, completion: nil)
    }
    func languageDidChange() {
        configureViews()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
