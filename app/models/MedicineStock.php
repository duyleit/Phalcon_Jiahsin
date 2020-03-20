<?php

class MedicineStock extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     * @Primary
     * @Identity
     * @Column(column="id", type="integer", length=11, nullable=false)
     */
    public $id;

    /**
     *
     * @var integer
     * @Column(column="user_code", type="integer", length=11, nullable=false)
     */
    public $user_code;

    /**
     *
     * @var string
     * @Column(column="code", type="string", length=10, nullable=true)
     */
    public $code;

    /**
     *
     * @var string
     * @Column(column="name", type="string", length=64, nullable=false)
     */
    public $name;

    /**
     *
     * @var string
     * @Column(column="category", type="string", length=50, nullable=false)
     */
    public $category;

    /**
     *
     * @var string
     * @Column(column="unit_code", type="string", length=10, nullable=false)
     */
    public $unit_code;

    /**
     *
     * @var integer
     * @Column(column="quantity", type="integer", length=11, nullable=false)
     */
    public $quantity;

    /**
     *
     * @var integer
     * @Column(column="price", type="integer", length=11, nullable=false)
     */
    public $price;

    /**
     *
     * @var integer
     * @Column(column="amount", type="integer", length=11, nullable=false)
     */
    public $amount;

    /**
     *
     * @var string
     * @Column(column="specification", type="string", length=250, nullable=false)
     */
    public $specification;

    /**
     *
     * @var string
     * @Column(column="approval_no", type="string", length=25, nullable=true)
     */
    public $approval_no;

    /**
     *
     * @var string
     * @Column(column="mfg_date", type="string", nullable=true)
     */
    public $mfg_date;

    /**
     *
     * @var string
     * @Column(column="exp_date", type="string", nullable=false)
     */
    public $exp_date;

    /**
     *
     * @var integer
     * @Column(column="min_stock", type="integer", length=11, nullable=true)
     */
    public $min_stock;

    /**
     *
     * @var string
     * @Column(column="forbidden", type="string", length=10, nullable=true)
     */
    public $forbidden;

    /**
     *
     * @var string
     * @Column(column="special", type="string", length=250, nullable=true)
     */
    public $special;

    /**
     *
     * @var string
     * @Column(column="manufactory", type="string", length=250, nullable=true)
     */
    public $manufactory;

    /**
     *
     * @var string
     * @Column(column="note", type="string", length=250, nullable=true)
     */
    public $note;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("jiahsin_app");
        $this->setSource("medicine_stock");
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'medicine_stock';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return MedicineStock[]|MedicineStock|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return MedicineStock|\Phalcon\Mvc\Model\ResultInterface
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
