//
//  ConvertedCurrencyView.swift
//  CurrencyConverter
//
//  Created by Amenda Kang on 2/16/24.
//

import UIKit

class ConvertedCurrencyView: UIViewController {
    var usdAmt : Int = 0
    var currenciesSelected = [Bool]()

    @IBOutlet weak var usdAmtLabel: UILabel!
    
    @IBOutlet weak var currency1Label: UILabel!
    @IBOutlet weak var currency2Label: UILabel!
    @IBOutlet weak var currency3Label: UILabel!
    @IBOutlet weak var currency4Label: UILabel!

    @IBOutlet weak var currency1Amt: UILabel!
    @IBOutlet weak var currency2Amt: UILabel!
    @IBOutlet weak var currency3Amt: UILabel!
    @IBOutlet weak var currency4Amt: UILabel!
    
    var currencyConversionLogic = CurrencyConversionLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @objc func updateUI() {
        usdAmtLabel.text = String (usdAmt)
        if currenciesSelected[0] {
            currency1Label.isHidden = false
            currency1Amt.isHidden = false
            currency1Label.text = currencyConversionLogic.getCurrencyName(0)
            currency1Amt.text = String(currencyConversionLogic.convertUSD(usdAmt, 0))
        } else {
            currency1Label.isHidden = true
            currency1Amt.isHidden = true
        }
        
        if currenciesSelected[1] {
            currency2Label.isHidden = false
            currency2Amt.isHidden = false
            currency2Label.text = currencyConversionLogic.getCurrencyName(1)
            currency2Amt.text = String(currencyConversionLogic.convertUSD(usdAmt, 1))
        } else {
            currency2Label.isHidden = true
            currency2Amt.isHidden = true
        }
        
        if currenciesSelected[2] {
            currency3Label.isHidden = false
            currency3Amt.isHidden = false
            currency3Label.text = currencyConversionLogic.getCurrencyName(2)
            currency3Amt.text = String(currencyConversionLogic.convertUSD(usdAmt, 2))
        } else {
            currency3Label.isHidden = true
            currency3Amt.isHidden = true
        }
        
        if currenciesSelected[3] {
            currency4Label.isHidden = false
            currency4Amt.isHidden = false
            currency4Label.text = currencyConversionLogic.getCurrencyName(3)
            currency4Amt.text = String(currencyConversionLogic.convertUSD(usdAmt, 3))
        } else {
            currency4Label.isHidden = true
            currency4Amt.isHidden = true
        }
    }

    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true)
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
