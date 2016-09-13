;;	 Clojure Day 1 problem 1
;;	 Write a function (big st n) the returns true if st is longer than n characters

(defn big [string size] (= (< size (count string)) true))

;;	Tests functionality
(big "This string is long" 4)
(big "not that long" 100)