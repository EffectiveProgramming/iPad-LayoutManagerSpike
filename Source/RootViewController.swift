import UIKit

class RootViewController: UIViewController {

    private var mainView: UIView?
    private var bottomView: UIView?
    private var leftView: UIView?
    private var rightView: UIView?
    private var topView: UIView?
    
    override func loadView() {
        super.loadView()
        
        mainView = createMainView()
        bottomView = createBottomView()
        leftView = createLeftView()
        rightView = createRightView()
        topView = createTopView()
        
        mainView?.topAnchor.constraintEqualToAnchor(topView?.bottomAnchor).active = true
        mainView?.leadingAnchor.constraintEqualToAnchor(leftView?.trailingAnchor).active = true
        mainView?.trailingAnchor.constraintEqualToAnchor(rightView?.leadingAnchor).active = true
        mainView?.bottomAnchor.constraintEqualToAnchor(bottomView?.topAnchor).active = true
        
        topView?.heightAnchor.constraintEqualToConstant(64.0).active = true
        leftView?.widthAnchor.constraintEqualToConstant(300.0).active = true
        rightView?.widthAnchor.constraintEqualToConstant(240.0).active = true
        bottomView?.heightAnchor.constraintEqualToConstant(100.0).active = true
    }
    
    private func createMainView() -> UIView {
        let view = UIView()
        view.backgroundColor = UIColor.redColor()
        self.view.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }

    private func createBottomView() -> UIView {
        let view = UIView()
        view.backgroundColor = UIColor.blueColor()
        self.view.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.bottomAnchor.constraintEqualToAnchor(self.view.bottomAnchor).active = true
        view.leadingAnchor.constraintEqualToAnchor(self.view.leadingAnchor).active = true
        view.trailingAnchor.constraintEqualToAnchor(self.view.trailingAnchor).active = true
        return view
    }

    private func createRightView() -> UIView {
        let view = UIView()
        view.backgroundColor = UIColor.greenColor()
        self.view.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.bottomAnchor.constraintEqualToAnchor(self.view.bottomAnchor).active = true
        view.topAnchor.constraintEqualToAnchor(self.view.topAnchor).active = true
        view.trailingAnchor.constraintEqualToAnchor(self.view.trailingAnchor).active = true
        return view
    }
    
    private func createLeftView() -> UIView {
        let view = UIView()
        view.backgroundColor = UIColor.magentaColor()
        self.view.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.bottomAnchor.constraintEqualToAnchor(self.view.bottomAnchor).active = true
        view.leadingAnchor.constraintEqualToAnchor(self.view.leadingAnchor).active = true
        view.topAnchor.constraintEqualToAnchor(self.view.topAnchor).active = true
        return view
    }

    private func createTopView() -> UIView {
        let view = UIView()
        view.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.trailingAnchor.constraintEqualToAnchor(self.view.trailingAnchor).active = true
        view.leadingAnchor.constraintEqualToAnchor(self.view.leadingAnchor).active = true
        view.topAnchor.constraintEqualToAnchor(self.view.topAnchor).active = true
        return view
    }

}

