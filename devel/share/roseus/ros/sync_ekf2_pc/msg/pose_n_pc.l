;; Auto-generated. Do not edit!


(when (boundp 'sync_ekf2_pc::pose_n_pc)
  (if (not (find-package "SYNC_EKF2_PC"))
    (make-package "SYNC_EKF2_PC"))
  (shadow 'pose_n_pc (find-package "SYNC_EKF2_PC")))
(unless (find-package "SYNC_EKF2_PC::POSE_N_PC")
  (make-package "SYNC_EKF2_PC::POSE_N_PC"))

(in-package "ROS")
;;//! \htmlinclude pose_n_pc.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass sync_ekf2_pc::pose_n_pc
  :super ros::object
  :slots (_pose_sync _pc_sync ))

(defmethod sync_ekf2_pc::pose_n_pc
  (:init
   (&key
    ((:pose_sync __pose_sync) (instance geometry_msgs::Pose :init))
    ((:pc_sync __pc_sync) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _pose_sync __pose_sync)
   (setq _pc_sync __pc_sync)
   self)
  (:pose_sync
   (&rest __pose_sync)
   (if (keywordp (car __pose_sync))
       (send* _pose_sync __pose_sync)
     (progn
       (if __pose_sync (setq _pose_sync (car __pose_sync)))
       _pose_sync)))
  (:pc_sync
   (&optional __pc_sync)
   (if __pc_sync (setq _pc_sync __pc_sync)) _pc_sync)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose_sync
    (send _pose_sync :serialization-length)
    ;; uint8[] _pc_sync
    (* 1    (length _pc_sync)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose_sync
       (send _pose_sync :serialize s)
     ;; uint8[] _pc_sync
     (write-long (length _pc_sync) s)
     (princ _pc_sync s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose_sync
     (send _pose_sync :deserialize buf ptr-) (incf ptr- (send _pose_sync :serialization-length))
   ;; uint8[] _pc_sync
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _pc_sync (make-array n :element-type :char))
     (replace _pc_sync buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get sync_ekf2_pc::pose_n_pc :md5sum-) "71ef86c488f3dbd4c8a0838abdc40c23")
(setf (get sync_ekf2_pc::pose_n_pc :datatype-) "sync_ekf2_pc/pose_n_pc")
(setf (get sync_ekf2_pc::pose_n_pc :definition-)
      "
geometry_msgs/Pose pose_sync

uint8[] pc_sync




================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :sync_ekf2_pc/pose_n_pc "71ef86c488f3dbd4c8a0838abdc40c23")


