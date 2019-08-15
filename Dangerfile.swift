import Danger

let danger = Danger()
let allSourceFiles = danger.git.modifiedFiles + danger.git.createdFiles

let changelogChanged = allSourceFiles.contains("CHANGELOG.md")
let sourceChanges = allSourceFiles.first(where: { $0.hasPrefix("Sources") })

if !changelogChanged && sourceChanges != nil {
  warn("No CHANGELOG entry added.")
}

// Instead of making a markdown table in the main message
// sprinkle those comments inline, this can be a bit noisy
// but it definitely feels magical.
SwiftLint.lint(inline: true)

// You can use these functions to send feedback:
/*message("Highlight something in the table")
warn("Something pretty bad, but not important enough to fail the build")
fail("Something that must be changed")

markdown("Free-form markdown that goes under the table, so you can do whatever.")
*/