; Auto-generated. Do not edit!


(cl:in-package sync_ekf2_pc-msg)


;//! \htmlinclude pose_n_pc.msg.html

(cl:defclass <pose_n_pc> (roslisp-msg-protocol:ros-message)
  ((pose_sync
    :reader pose_sync
    :initarg :pose_sync
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (pc_sync
    :reader pc_sync
    :initarg :pc_sync
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass pose_n_pc (<pose_n_pc>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_n_pc>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_n_pc)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sync_ekf2_pc-msg:<pose_n_pc> is deprecated: use sync_ekf2_pc-msg:pose_n_pc instead.")))

(cl:ensure-generic-function 'pose_sync-val :lambda-list '(m))
(cl:defmethod pose_sync-val ((m <pose_n_pc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sync_ekf2_pc-msg:pose_sync-val is deprecated.  Use sync_ekf2_pc-msg:pose_sync instead.")
  (pose_sync m))

(cl:ensure-generic-function 'pc_sync-val :lambda-list '(m))
(cl:defmethod pc_sync-val ((m <pose_n_pc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sync_ekf2_pc-msg:pc_sync-val is deprecated.  Use sync_ekf2_pc-msg:pc_sync instead.")
  (pc_sync m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_n_pc>) ostream)
  "Serializes a message object of type '<pose_n_pc>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_sync) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pc_sync))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'pc_sync))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_n_pc>) istream)
  "Deserializes a message object of type '<pose_n_pc>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_sync) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pc_sync) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pc_sync)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_n_pc>)))
  "Returns string type for a message object of type '<pose_n_pc>"
  "sync_ekf2_pc/pose_n_pc")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_n_pc)))
  "Returns string type for a message object of type 'pose_n_pc"
  "sync_ekf2_pc/pose_n_pc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_n_pc>)))
  "Returns md5sum for a message object of type '<pose_n_pc>"
  "71ef86c488f3dbd4c8a0838abdc40c23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_n_pc)))
  "Returns md5sum for a message object of type 'pose_n_pc"
  "71ef86c488f3dbd4c8a0838abdc40c23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_n_pc>)))
  "Returns full string definition for message of type '<pose_n_pc>"
  (cl:format cl:nil "~%geometry_msgs/Pose pose_sync~%~%uint8[] pc_sync~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_n_pc)))
  "Returns full string definition for message of type 'pose_n_pc"
  (cl:format cl:nil "~%geometry_msgs/Pose pose_sync~%~%uint8[] pc_sync~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_n_pc>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_sync))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pc_sync) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_n_pc>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_n_pc
    (cl:cons ':pose_sync (pose_sync msg))
    (cl:cons ':pc_sync (pc_sync msg))
))
