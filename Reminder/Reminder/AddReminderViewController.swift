import UIKit

protocol AddReminderViewControllerDelegate: AnyObject{
    func addNewReminder(withText:String?)
}

final class AddReminderViewController:UIViewController{
    
    @IBOutlet weak var newReminderTextField:UITextField!
    
    weak var delegate:AddReminderViewControllerDelegate? = nil
    
    @IBAction func didTapCancelButton(_ sender: UIBarButtonItem){
        debugPrint("Before dismiss()")
        dismiss(animated: true){
            debugPrint("Finished dismissing!")
        }
        debugPrint("After dismiss()")
    }
    
    @IBAction func didSaveButton(_ sender: UIBarButtonItem) {
        debugPrint(#function)
        debugPrint(newReminderTextField.text)
        delegate?.addNewReminder(withText:newReminderTextField.text)
        dismiss(animated: true){
            debugPrint("Finished dismissing!")
        }
    }
    
}
