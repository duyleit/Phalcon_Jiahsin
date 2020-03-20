<?php

class Bookmeal extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     * @Primary
     * @Identity
     * @Column(column="bm_id", type="integer", length=21, nullable=false)
     */
    public $bm_id;

    /**
     *
     * @var string
     * @Column(column="date", type="string", nullable=true)
     */
    public $date;

    /**
     *
     * @var string
     * @Column(column="user_code", type="string", length=11, nullable=true)
     */
    public $user_code;

    /**
     *
     * @var integer
     * @Column(column="dept_code", type="integer", length=5, nullable=true)
     */
    public $dept_code;

    /**
     *
     * @var integer
     * @Column(column="lunch", type="integer", length=3, nullable=true)
     */
    public $lunch;

    /**
     *
     * @var integer
     * @Column(column="lunch_add", type="integer", length=3, nullable=true)
     */
    public $lunch_add;

    /**
     *
     * @var integer
     * @Column(column="lunch_veg", type="integer", length=3, nullable=true)
     */
    public $lunch_veg;

    /**
     *
     * @var integer
     * @Column(column="lunch_soup", type="integer", length=3, nullable=true)
     */
    public $lunch_soup;

    /**
     *
     * @var integer
     * @Column(column="lunch_veg_add", type="integer", length=3, nullable=true)
     */
    public $lunch_veg_add;

    /**
     *
     * @var integer
     * @Column(column="dinner", type="integer", length=3, nullable=true)
     */
    public $dinner;

    /**
     *
     * @var integer
     * @Column(column="dinner_add", type="integer", length=3, nullable=true)
     */
    public $dinner_add;

    /**
     *
     * @var integer
     * @Column(column="dinner_veg_add", type="integer", length=3, nullable=true)
     */
    public $dinner_veg_add;

    /**
     *
     * @var integer
     * @Column(column="supper", type="integer", length=3, nullable=true)
     */
    public $supper;

    /**
     *
     * @var integer
     * @Column(column="supper_veg", type="integer", length=3, nullable=true)
     */
    public $supper_veg;

    /**
     *
     * @var integer
     * @Column(column="separate_table", type="integer", length=3, nullable=true)
     */
    public $separate_table;

    /**
     *
     * @var integer
     * @Column(column="buffet", type="integer", length=3, nullable=true)
     */
    public $buffet;

    /**
     *
     * @var string
     * @Column(column="note", type="string", length=255, nullable=true)
     */
    public $note;

    /**
     *
     * @var string
     * @Column(column="date_create", type="string", nullable=false)
     */
    public $date_create;

    /**
     *
     * @var string
     * @Column(column="date_modify", type="string", nullable=false)
     */
    public $date_modify;

    /**
     *
     * @var string
     * @Column(column="user_code_modify", type="string", length=11, nullable=true)
     */
    public $user_code_modify;

    /**
     *
     * @var integer
     * @Column(column="status", type="integer", length=5, nullable=true)
     */
    public $status;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("appjhv_new");
        $this->setSource("bookmeal");
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'bookmeal';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Bookmeal[]|Bookmeal|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Bookmeal|\Phalcon\Mvc\Model\ResultInterface
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
