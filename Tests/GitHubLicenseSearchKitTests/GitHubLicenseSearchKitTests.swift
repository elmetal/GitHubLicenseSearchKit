import XCTest
@testable import GitHubLicenseSearchKit

final class GitHubLicenseSearchKitTests: XCTestCase {

    func test_search() async {
        do {
            let repos = try await LicenseSearcher().search(repoName: "GitHubLicenseSearchKit")
            XCTAssertEqual(repos.items.map { $0.license?.name }, ["MIT License"])
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_license() async {
        do {
            let license = try await LicenseSearcher().license(key: "mit")
            XCTAssertEqual(license.key, "mit")
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
