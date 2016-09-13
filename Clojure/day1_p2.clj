;; Clojure Day 1 problem 2
;; Write a function call (collection-type col) that returns :list, :map, or :vector
;; based on the type of collection col

(defn collection-type 
	[thing] 
	(cond 
		(= (type thing) clojure.lang.PersistentList) :list 
		(= (type thing) clojure.lang.PersistentVector) :vector
		(= (type thing) clojure.lang.PersistentArrayMap) :map
	)
)