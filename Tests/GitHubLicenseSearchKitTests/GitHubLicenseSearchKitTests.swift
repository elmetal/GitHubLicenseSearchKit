import XCTest
@testable import GitHubLicenseSearchKit

final class LicenseTests: XCTestCase {

    func test_search() async {
        do {
            let repos = try await LicenseSearcher().search(repoName: "GitHubLicenseSearchKit")
            XCTAssertEqual(repos.items.map { $0.license?.name }, ["MIT License"])
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
