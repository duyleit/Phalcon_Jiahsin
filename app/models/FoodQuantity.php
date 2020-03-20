<?php

class FoodQuantity extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     * @Primary
     * @Identity
     * @Column(column="Id", type="integer", length=10, nullable=false)
     */
    protected $id;

    /**
     *
     * @var string
     * @Column(column="Ngaydat", type="string", nullable=false)
     */
    protected $ngaydat;

    /**
     *
     * @var string
     * @Column(column="Trolydat", type="string", length=80, nullable=true)
     */
    protected $trolydat;

    /**
     *
     * @var integer
     * @Column(column="Id_dept", type="integer", length=11, nullable=true)
     */
    protected $id_dept;

    /**
     *
     * @var integer
     * @Column(column="Comman_trua", type="integer", length=11, nullable=true)
     */
    protected $comman_trua;

    /**
     *
     * @var integer
     * @Column(column="Phuman_trua", type="integer", length=11, nullable=true)
     */
    protected $phuman_trua;

    /**
     *
     * @var integer
     * @Column(column="Comchay_trua", type="integer", length=11, nullable=true)
     */
    protected $comchay_trua;

    /**
     *
     * @var integer
     * @Column(column="Chao_trua", type="integer", length=11, nullable=true)
     */
    protected $chao_trua;

    /**
     *
     * @var integer
     * @Column(column="Phuchay_trua", type="integer", length=11, nullable=true)
     */
    protected $phuchay_trua;

    /**
     *
     * @var integer
     * @Column(column="Comman_chieu", type="integer", length=11, nullable=true)
     */
    protected $comman_chieu;

    /**
     *
     * @var integer
     * @Column(column="Phuman_chieu", type="integer", length=11, nullable=true)
     */
    protected $phuman_chieu;

    /**
     *
     * @var integer
     * @Column(column="Phuchay_chieu", type="integer", length=11, nullable=true)
     */
    protected $phuchay_chieu;

    /**
     *
     * @var integer
     * @Column(column="Man_dem", type="integer", length=11, nullable=true)
     */
    protected $man_dem;

    /**
     *
     * @var integer
     * @Column(column="Chay_dem", type="integer", length=11, nullable=true)
     */
    protected $chay_dem;

    /**
     *
     * @var integer
     * @Column(column="Donbanrieng", type="integer", length=11, nullable=true)
     */
    protected $donbanrieng;

    /**
     *
     * @var integer
     * @Column(column="Buffet", type="integer", length=11, nullable=true)
     */
    protected $buffet;

    /**
     *
     * @var string
     * @Column(column="Ghichu", type="string", length=255, nullable=true)
     */
    protected $ghichu;

    /**
     * Method to set the value of field id
     *
     * @param integer $id
     * @return $this
     */
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Method to set the value of field ngaydat
     *
     * @param string $ngaydat
     * @return $this
     */
    public function setNgaydat($ngaydat)
    {
        $this->ngaydat = $ngaydat;

        return $this;
    }

    /**
     * Method to set the value of field trolydat
     *
     * @param string $trolydat
     * @return $this
     */
    public function setTrolydat($trolydat)
    {
        $this->trolydat = $trolydat;

        return $this;
    }

    /**
     * Method to set the value of field id_dept
     *
     * @param integer $id_dept
     * @return $this
     */
    public function setIdDept($id_dept)
    {
        $this->id_dept = $id_dept;

        return $this;
    }

    /**
     * Method to set the value of field comman_trua
     *
     * @param integer $comman_trua
     * @return $this
     */
    public function setCommanTrua($comman_trua)
    {
        $this->comman_trua = $comman_trua;

        return $this;
    }

    /**
     * Method to set the value of field phuman_trua
     *
     * @param integer $phuman_trua
     * @return $this
     */
    public function setPhumanTrua($phuman_trua)
    {
        $this->phuman_trua = $phuman_trua;

        return $this;
    }

    /**
     * Method to set the value of field comchay_trua
     *
     * @param integer $comchay_trua
     * @return $this
     */
    public function setComchayTrua($comchay_trua)
    {
        $this->comchay_trua = $comchay_trua;

        return $this;
    }

    /**
     * Method to set the value of field chao_trua
     *
     * @param integer $chao_trua
     * @return $this
     */
    public function setChaoTrua($chao_trua)
    {
        $this->chao_trua = $chao_trua;

        return $this;
    }

    /**
     * Method to set the value of field phuchay_trua
     *
     * @param integer $phuchay_trua
     * @return $this
     */
    public function setPhuchayTrua($phuchay_trua)
    {
        $this->phuchay_trua = $phuchay_trua;

        return $this;
    }

    /**
     * Method to set the value of field comman_chieu
     *
     * @param integer $comman_chieu
     * @return $this
     */
    public function setCommanChieu($comman_chieu)
    {
        $this->comman_chieu = $comman_chieu;

        return $this;
    }

    /**
     * Method to set the value of field phuman_chieu
     *
     * @param integer $phuman_chieu
     * @return $this
     */
    public function setPhumanChieu($phuman_chieu)
    {
        $this->phuman_chieu = $phuman_chieu;

        return $this;
    }

    /**
     * Method to set the value of field phuchay_chieu
     *
     * @param integer $phuchay_chieu
     * @return $this
     */
    public function setPhuchayChieu($phuchay_chieu)
    {
        $this->phuchay_chieu = $phuchay_chieu;

        return $this;
    }

    /**
     * Method to set the value of field man_dem
     *
     * @param integer $man_dem
     * @return $this
     */
    public function setManDem($man_dem)
    {
        $this->man_dem = $man_dem;

        return $this;
    }

    /**
     * Method to set the value of field chay_dem
     *
     * @param integer $chay_dem
     * @return $this
     */
    public function setChayDem($chay_dem)
    {
        $this->chay_dem = $chay_dem;

        return $this;
    }

    /**
     * Method to set the value of field donbanrieng
     *
     * @param integer $donbanrieng
     * @return $this
     */
    public function setDonbanrieng($donbanrieng)
    {
        $this->donbanrieng = $donbanrieng;

        return $this;
    }

    /**
     * Method to set the value of field buffet
     *
     * @param integer $buffet
     * @return $this
     */
    public function setBuffet($buffet)
    {
        $this->buffet = $buffet;

        return $this;
    }

    /**
     * Method to set the value of field ghichu
     *
     * @param string $ghichu
     * @return $this
     */
    public function setGhichu($ghichu)
    {
        $this->ghichu = $ghichu;

        return $this;
    }

    /**
     * Returns the value of field id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Returns the value of field ngaydat
     *
     * @return string
     */
    public function getNgaydat()
    {
        return $this->ngaydat;
    }

    /**
     * Returns the value of field trolydat
     *
     * @return string
     */
    public function getTrolydat()
    {
        return $this->trolydat;
    }

    /**
     * Returns the value of field id_dept
     *
     * @return integer
     */
    public function getIdDept()
    {
        return $this->id_dept;
    }

    /**
     * Returns the value of field comman_trua
     *
     * @return integer
     */
    public function getCommanTrua()
    {
        return $this->comman_trua;
    }

    /**
     * Returns the value of field phuman_trua
     *
     * @return integer
     */
    public function getPhumanTrua()
    {
        return $this->phuman_trua;
    }

    /**
     * Returns the value of field comchay_trua
     *
     * @return integer
     */
    public function getComchayTrua()
    {
        return $this->comchay_trua;
    }

    /**
     * Returns the value of field chao_trua
     *
     * @return integer
     */
    public function getChaoTrua()
    {
        return $this->chao_trua;
    }

    /**
     * Returns the value of field phuchay_trua
     *
     * @return integer
     */
    public function getPhuchayTrua()
    {
        return $this->phuchay_trua;
    }

    /**
     * Returns the value of field comman_chieu
     *
     * @return integer
     */
    public function getCommanChieu()
    {
        return $this->comman_chieu;
    }

    /**
     * Returns the value of field phuman_chieu
     *
     * @return integer
     */
    public function getPhumanChieu()
    {
        return $this->phuman_chieu;
    }

    /**
     * Returns the value of field phuchay_chieu
     *
     * @return integer
     */
    public function getPhuchayChieu()
    {
        return $this->phuchay_chieu;
    }

    /**
     * Returns the value of field man_dem
     *
     * @return integer
     */
    public function getManDem()
    {
        return $this->man_dem;
    }

    /**
     * Returns the value of field chay_dem
     *
     * @return integer
     */
    public function getChayDem()
    {
        return $this->chay_dem;
    }

    /**
     * Returns the value of field donbanrieng
     *
     * @return integer
     */
    public function getDonbanrieng()
    {
        return $this->donbanrieng;
    }

    /**
     * Returns the value of field buffet
     *
     * @return integer
     */
    public function getBuffet()
    {
        return $this->buffet;
    }

    /**
     * Returns the value of field ghichu
     *
     * @return string
     */
    public function getGhichu()
    {
        return $this->ghichu;
    }

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("jiahsin_app");
        $this->setSource("food_quantity");
        $this->belongsTo('Id_dept', '\FoodOrderDepartment', 'Id', ['alias' => 'FoodOrderDepartment']);
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'food_quantity';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return FoodQuantity[]|FoodQuantity|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return FoodQuantity|\Phalcon\Mvc\Model\ResultInterface
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

    /**
     * Independent Column Mapping.
     * Keys are the real names in the table and the values their names in the application
     *
     * @return array
     */
    public function columnMap()
    {
        return [
            'Id' => 'Id',
            'Ngaydat' => 'Ngaydat',
            'Trolydat' => 'Trolydat',
            'Id_dept' => 'Id_dept',
            'Comman_trua' => 'Comman_trua',
            'Phuman_trua' => 'Phuman_trua',
            'Comchay_trua' => 'Comchay_trua',
            'Chao_trua' => 'Chao_trua',
            'Phuchay_trua' => 'Phuchay_trua',
            'Comman_chieu' => 'Comman_chieu',
            'Phuman_chieu' => 'Phuman_chieu',
            'Phuchay_chieu' => 'Phuchay_chieu',
            'Man_dem' => 'Man_dem',
            'Chay_dem' => 'Chay_dem',
            'Donbanrieng' => 'Donbanrieng',
            'Buffet' => 'Buffet',
            'Ghichu' => 'Ghichu'
        ];
    }

}
