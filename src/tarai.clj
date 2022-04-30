(ns tarai)

(defn tarai [x y z]
  (if (<= x y)
    y
    (tarai (tarai (dec x) y z)
           (tarai (dec y) z x)
           (tarai (dec z) x y))))

(defn run [_]
  (time (tarai 15 8 0)))
;; clj -X tarai/run
;; "Elapsed time: 12821.716875 msecs"


(defn- T [fx fy fz]
  (if (<= (fx) (fy))
    (fy)
    (T (fn [] (T (fn [] (- (fx) 1)) fy fz))
       (fn [] (T (fn [] (- (fy) 1)) fz fx))
       (fn [] (T (fn [] (- (fz) 1)) fx fy)))))

(defn fast-tarai [x y z]
  (T (fn [] x) (fn [] y) (fn [] z)))

(time (fast-tarai 15 8 0))
;; 15
;; "Elapsed time: 2.267 msecs"
