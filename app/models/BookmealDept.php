<?php

class BookmealDept extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     * @Primary
     * @Identity
     * @Column(column="bd_id", type="integer", length=11, nullable=false)
     */
    public $bd_id;

    /**
     *
     * @var string
     * @Column(column="name", type="string", length=160, nullable=true)
     */
    public $name;

    /**
     *
     * @var string
     * @Column(column="bd_code", type="string", length=10, nullable=true)
     */
    public $bd_code;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("appjhv_new");
        $this->setSource("bookmeal_dept");
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'bookmeal_dept';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return BookmealDept[]|BookmealDept|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return BookmealDept|\Phalcon\Mvc\Model\ResultInterface
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
