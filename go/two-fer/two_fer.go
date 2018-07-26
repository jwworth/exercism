// Provides a function for printing a sentence about sharing
package twofer

import "fmt"

// Print a sentence about sharing.
func ShareWith(name string) string {
	var receiver string
	if name == "" {
		receiver = "you"
	} else {
		receiver = name
	}
	return fmt.Sprintf("One for %s, one for me.", receiver)
}
