<?php

class MedicineBasic extends \Phalcon\Mvc\Model
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
     * @Column(column="unit_code", type="string", length=10, nullable=false)
     */
    public $unit_code;

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
     * @Column(column="manufactory", type="string", length=250, nullable=false)
     */
    public $manufactory;

    /**
     *
     * @var integer
     * @Column(column="min_stock", type="integer", length=11, nullable=true)
     */
    public $min_stock;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("jiahsin_app");
        $this->setSource("medicine_basic");
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'medicine_basic';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return MedicineBasic[]|MedicineBasic|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return MedicineBasic|\Phalcon\Mvc\Model\ResultInterface
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
