import UIKit

class GameViewController: UIViewController {

    private let mainView = MainView()
    private let kNumbersOfTapRequired = 2

    override func viewDidLoad() {
        super.viewDidLoad()
        view = mainView

        setupGestureRecognizer()
    }

    private func setupGestureRecognizer() {
        let doubleTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(doubleTapped))
        doubleTapGestureRecognizer.numberOfTapsRequired = kNumbersOfTapRequired
        doubleTapGestureRecognizer.delegate = self
        view.addGestureRecognizer(doubleTapGestureRecognizer)
    }

    @objc
    func doubleTapped(_ tap: UITapGestureRecognizer) {
        print("tapCheck")
    }

}
