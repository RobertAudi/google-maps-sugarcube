GOOGLE_MAPS_API_KEY = "AIzaSyC4LkOsZZ-lM6PIjpN9fXYL6ICNgwcb1eg"

class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    GMSServices.provideAPIKey(GOOGLE_MAPS_API_KEY)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    rootViewController   = MasterViewController.alloc.init
    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    true
  end
end
