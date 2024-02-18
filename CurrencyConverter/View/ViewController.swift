//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Amenda Kang on 2/16/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usdAmtField: UITextField!
    @IBOutlet weak var usdAmtErrorLabel: UILabel!
    
    @IBOutlet weak var currency1Label: UILabel!
    @IBOutlet weak var currency2Label: UILabel!
    @IBOutlet weak var currency3Label: UILabel!
    @IBOutlet weak var currency4Label: UILabel!
    
    @IBOutlet weak var currency1Switch: UISwitch!
    @IBOutlet weak var currency2Switch: UISwitch!
    @IBOutlet weak var currency3Switch: UISwitch!
    @IBOutlet weak var currency4Switch: UISwitch!
    var switchedOn = [true, true, true, true]
    
    var currencyConversionLogic = CurrencyConversionLogic()
    var usdAmt : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @objc func updateUI() {
        currency1Label.text = currencyConversionLogic.getCurrencyName(0)
        currency2Label.text = currencyConversionLogic.getCurrencyName(1)
        currency3Label.text = currencyConversionLogic.getCurrencyName(2)
        currency4Label.text = currencyConversionLogic.getCurrencyName(3)
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        var switchIndex = 0;
        if (sender == currency2Switch) {
            switchIndex = 1;
        } else if (sender == currency3Switch) {
            switchIndex = 2;
        } else if (sender == currency4Switch) {
            switchIndex = 3;
        }
        switchedOn[switchIndex] = !switchedOn[switchIndex]
    }
    
    @IBAction func convertBtnClicked(_ sender: UIButton) {
        if (!amtIsInt()) {
            usdAmtErrorLabel.text = "Integer only"
        } else {
            usdAmtErrorLabel.text = ""
            usdAmt = Int(usdAmtField.text ?? "") ?? 0;
            self.performSegue(withIdentifier: "toConvertedCurrency", sender: self)
        }
    }
    
    func amtIsInt() -> Bool {
        if Int(usdAmtField.text ?? "") == nil {
            return false;
        } else {
            return true;
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConvertedCurrency" {
            let currencyNavigation = segue.destination as! ConvertedCurrencyView
            currencyNavigation.usdAmt = usdAmt
            currencyNavigation.currenciesSelected = switchedOn 
        }
    }
}
