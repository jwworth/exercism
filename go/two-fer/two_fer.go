// Provides a function for printing a sentence about sharing
package twofer

import "fmt"

// Print a sentence about sharing.
func ShareWith(name string) string {
	if name == "" {
		name = "you"
	}
	return fmt.Sprintf("One for %s, one for me.", name)
}
