<?php

class Company extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var string
     * @Column(column="code", type="string", length=5, nullable=true)
     */
    public $code;

    /**
     *
     * @var string
     * @Column(column="name", type="string", length=64, nullable=false)
     */
    public $name;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("jiahsin_app");
        $this->setSource("company");
        $this->hasMany('code', 'User', 'com_code', ['alias' => 'User']);
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'company';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Company[]|Company|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Company|\Phalcon\Mvc\Model\ResultInterface
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}