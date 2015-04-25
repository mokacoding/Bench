import Quick

extension QuickSpec: KIFTestActorDelegate {

    func tester(_ file : String = __FILE__, _ line : Int = __LINE__) -> KIFUITestActor {
        var t = KIFUITestActor(inFile: file, atLine: line, delegate: self)
        return t!
    }

    func system(_ file : String = __FILE__, _ line : Int = __LINE__) -> KIFSystemTestActor {
        return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
    }

    // MARK: - KIFTestActorDelegate

    override public func failWithException(exception: NSException!, stopTest stop: Bool) {
        if let userInfo = exception.userInfo {
            XCTFail(exception.description,
                file: userInfo["SenTestFilenameKey"] as! String,
                line: userInfo["SenTestLineNumberKey"] as! UInt)
        } else {
            XCTFail(exception.description)
        }
    }

}