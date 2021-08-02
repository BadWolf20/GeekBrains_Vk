//
//  LoginViewController.swift
//  vk
//
//  Created by Roman on 30.07.2021.
//

import UIKit


class LoginViewController: UIViewController {
    
    
    
    //MARK: Outlets
    @IBOutlet private var scrollView: UIScrollView!
    
    @IBOutlet private var loginTextField: UITextField!
    
    @IBOutlet private var passwordTextField: UITextField!
    
    @IBOutlet private var loginButton: UIButton!
    
    
    
    //MARK: Life cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //navigationController?.navigationBar.isHidden = true

        
        /// Настройка скролинга с уччетом размеров клавиатуры
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWasShown(_:)),
                                               name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillHide(_:)),
                                               name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    
    
    //MARK: Functions
    
    /// Настройка скролинга и автоскролинга при появлении клавиатуры
    @objc func  keyBoardWasShown(_ notification: Notification){
        let info = notification.userInfo! as NSDictionary
        let keyboardSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as? NSValue)?.cgRectValue.size
        let contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize?.height ?? 0, right: 0)
        
        scrollView.contentInset = contentInset
        scrollView.scrollIndicatorInsets = contentInset
        scrollView.scrollRectToVisible(loginButton.frame, animated: true)
    }
    
    @objc func  keyBoardWillHide(_ notification: Notification){
        scrollView.contentInset = .zero
    }
    
    
    /// Действия по нажатию кнопки
    @IBAction func loggingButtonAction(_ sender: Any) {
        //checkAutoData()

    }
    
    /// Возвтрат на экран авторизации
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
        
    }
    
    
    //MARK: Авторизация
    /// Сообщение об ошибке авторизации
    func showAuthError() {
        
        /// Функция открывает форму востановления пароля в Safari
        func showRemindForm(){
            if let url = URL(string: "https://static.vk.com/restore/#/resetPassword") {
                UIApplication.shared.open(url)
            }
        }
        
        /// Создаем Alert  и кнопки к нему
        let alertVC = UIAlertController(title: "Error!", message: "Please enter corrent data", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        let remindPassword = UIAlertAction(title: "Forgot password?", style: .default) { UIAlertAction in
            showRemindForm()
        }
        
        /// Добавляем кнопки на  Alert
        alertVC.addAction(okAction)
        alertVC.addAction(remindPassword)
        
        /// Отображаем Alert
        self.present(alertVC, animated: true, completion: nil)
    }
    
    /// Проверка правильности логина и пароля
    func checkAutoData() -> Bool{
        let login = loginTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        /// Заготовка для более сложной авторизации
        let authorizationResult = (login.isEmpty && password.isEmpty)
        
        return authorizationResult
    }
    
    ///Переход на tabController при правильности авторизации
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        //return identifier == "showMainScreenID" && checkAutoData()
        if identifier == "showMainScreenID"{
            if !checkAutoData(){
                showAuthError()
            }
        }
        
        return checkAutoData()
    }

}
