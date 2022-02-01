
(cl:in-package :asdf)

(defsystem "sync_ekf2_pc-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "pose_n_pc" :depends-on ("_package_pose_n_pc"))
    (:file "_package_pose_n_pc" :depends-on ("_package"))
  ))