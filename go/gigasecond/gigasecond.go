// Provides a function for adding a gigasecond to a given time.
package gigasecond

import "time"

// Adds a gigasecond to the given time.
func AddGigasecond(t time.Time) time.Time {
	return t.Add(time.Second * 1000000000)
}
