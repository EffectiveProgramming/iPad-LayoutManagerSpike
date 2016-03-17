import UIKit

class RootViewController: UIViewController {

    var topConstraint: NSLayoutConstraint!
    var leftConstraint: NSLayoutConstraint!
    var rightConstraint: NSLayoutConstraint!
    var bottomConstraint: NSLayoutConstraint!
    
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
        
        topConstraint = topView?.heightAnchor.constraintEqualToConstant(64.0)
        topConstraint.active = true
        
        leftConstraint = leftView?.widthAnchor.constraintEqualToConstant(300.0)
        leftConstraint.active = true
        
        rightConstraint = rightView?.widthAnchor.constraintEqualToConstant(240.0)
        rightConstraint.active = true
        
        bottomConstraint = bottomView?.heightAnchor.constraintEqualToConstant(100.0)
        bottomConstraint.active = true
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

