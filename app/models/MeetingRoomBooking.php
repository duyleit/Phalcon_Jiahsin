<?php

class MeetingRoomBooking extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     * @Primary
     * @Identity
     * @Column(column="id", type="integer", length=22, nullable=false)
     */
    public $id;

    /**
     *
     * @var string
     * @Column(column="user_code", type="string", length=11, nullable=false)
     */
    public $user_code;

    /**
     *
     * @var string
     * @Column(column="com_code", type="string", length=5, nullable=false)
     */
    public $com_code;

    /**
     *
     * @var string
     * @Column(column="dept_code", type="string", length=5, nullable=false)
     */
    public $dept_code;

    /**
     *
     * @var string
     * @Column(column="room_code", type="string", length=5, nullable=false)
     */
    public $room_code;

    /**
     *
     * @var string
     * @Column(column="presiding", type="string", length=128, nullable=false)
     */
    public $presiding;

    /**
     *
     * @var string
     * @Column(column="title", type="string", length=256, nullable=false)
     */
    public $title;

    /**
     *
     * @var string
     * @Column(column="content", type="string", nullable=false)
     */
    public $content;

    /**
     *
     * @var string
     * @Column(column="start", type="string", nullable=false)
     */
    public $start;

    /**
     *
     * @var string
     * @Column(column="end", type="string", nullable=false)
     */
    public $end;

    /**
     *
     * @var integer
     * @Column(column="status", type="integer", length=5, nullable=false)
     */
    public $status;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("jiahsin_app");
        $this->setSource("meeting_room_booking");
        $this->belongsTo('room_code', '\Room', 'code', ['alias' => 'Room']);
        $this->belongsTo('dept_code', '\Department', 'code', ['alias' => 'Department']);
        $this->belongsTo('com_code', '\Company', 'code', ['alias' => 'Company']);
        $this->belongsTo('user_code', '\User', 'code', ['alias' => 'User']);
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'meeting_room_booking';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return MeetingRoomBooking[]|MeetingRoomBooking|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return MeetingRoomBooking|\Phalcon\Mvc\Model\ResultInterface
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
