(in-package :clunit)


;; TEST-CASE Utility functions

(defun get-test-case (name)
	"Retrieves the TEST-CASE instance associated with the key NAME in the hash table *TEST-CASES*"
	(gethash name *test-case-hashtable*))

(defun (setf get-test-case) (new-test-case name)
	"Adds NEW-TEST-CASE in the hash table *TEST-CASES* under the key NAME."
	(setf (gethash name *test-case-hashtable*) new-test-case))

(defun delete-test-case (name)
	"Deletes the TEST-CASE instance associated with the key NAME in the hash table *TEST-CASES*"
	(remhash name *test-case-hashtable*))



;; TEST-SUITE Utility functions.

(defun get-test-suite (name)
	"Retrieves the TEST-SUITE instance associated with the key NAME in the hash table *TEST-SUITES*"
	(gethash name *test-suite-hashtable*))

(defun (setf get-test-suite) (new-test-suite name)
	"Adds NEW-TEST-SUITE in the hash table *TEST-SUITES* under the key NAME."
	(setf (gethash name *test-suite-hashtable*) new-test-suite))

(defun delete-test-suite (name)
	"Deletes the TEST-SUITE instance associated with the key NAME in the hash table *TEST-SUITES*"
	(remhash name *test-suite-hashtable*))