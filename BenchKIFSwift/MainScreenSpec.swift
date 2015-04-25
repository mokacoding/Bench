import Quick

class MainScreenSpec: QuickSpec {

    override func spec() {
        KIFUITestActor.setDefaultTimeout(1)

        /**
         *  This ones fails, as in the failure is not delivered.
         *  Don't know why, maybe because of issues with the closures?
         *
        let t = self.tester()
         */

        describe("the main screen") {
            context("when I tap the 'say hello' button") {
                it("I see a greetings alert") {
                    self.tester().tapViewWithAccessibilityLabel("say hello")

                    self.tester().waitForViewWithAccessibilityLabel("Hello")
                    self.tester().waitForViewWithAccessibilityLabel("Sup?")
                    self.tester().waitForViewWithAccessibilityLabel("Dismiss")

                    self.tester().tapViewWithAccessibilityLabel("Dismiss")

                    self.tester().waitForAbsenceOfViewWithAccessibilityLabel("Hello")
                    self.tester().waitForAbsenceOfViewWithAccessibilityLabel("Sup?")
                    self.tester().waitForAbsenceOfViewWithAccessibilityLabel("Dismiss")

                    self.tester().waitForViewWithAccessibilityLabel("THIS IS HERE ON PURPOSE TO MAKE THE TEST FAIL")
                }
            }
        }
    }
}

