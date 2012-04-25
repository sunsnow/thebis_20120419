<?php
/**
 * Unicode Systems
 * @category   Uni
 * @package    Uni_Fileuploader
 * @copyright  Copyright (c) 2010-2011 Unicode Systems. (http://www.unicodesystems.in)
 * @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 */
class Uni_Fileuploader_Block_Adminhtml_Fileuploader_Edit_Tab_Productfile extends Uni_Fileuploader_Block_Adminhtml_Widget_Grid {

    public function __construct() {
        parent::__construct();
        $this->setId('fileproductGrid');
        $this->setDefaultSort('fileuploader_id');
        $this->setDefaultDir('ASC');
        $this->setUseAjax(true);
    }

    protected function _prepareCollection() {
        $productId = $this->getRequest()->getParam('id');
        if ($productId) {
            $collection = Mage::getModel('fileuploader/fileuploader')->getCollection();
            $collection->addFieldToFilter('product_ids', array('finset' => $productId));
            $this->setCollection($collection);
        }
        return parent::_prepareCollection();
    }

    protected function _prepareColumns() {
        $this->addColumn('fileuploader_id', array(
            'header' => Mage::helper('fileuploader')->__('ID'),
            'align' => 'right',
            'width' => '50px',
            'index' => 'fileuploader_id',
        ));
        $this->addColumn('title', array(
            'header' => Mage::helper('fileuploader')->__('Title'),
            'align' => 'left',
            'index' => 'title',
        ));

        $this->addColumn('product_ids', array(
            'header' => Mage::helper('fileuploader')->__('Products'),
            'align' => 'left',
            'index' => 'product_ids',
        ));

        $this->addColumn('uploaded_file', array(
            'header' => Mage::helper('fileuploader')->__('File'),
            'align' => 'left',
            'type' => 'file',
            'escape' => true,
            'sortable' => false,
            'index' => 'uploaded_file',
        ));

        $this->addColumn('content_disp', array(
            'header' => Mage::helper('fileuploader')->__('Content-Disposiotion'),
            'align' => 'left',
            'width' => '80px',
            'index' => 'content_disp',
            'type' => 'options',
            'options' => array(
                0 => 'Attachment',
                1 => 'Inline',
            ),
        ));

        $this->addColumn('sort_order', array(
            'header' => Mage::helper('fileuploader')->__('Sort Order'),
            'width' => '80px',
            'index' => 'sort_order',
            'align' => 'center',
        ));

        $this->addColumn('file_status', array(
            'header' => Mage::helper('fileuploader')->__('Status'),
            'align' => 'left',
            'width' => '80px',
            'index' => 'file_status',
            'type' => 'options',
            'options' => array(
                1 => 'Enabled',
                2 => 'Disabled',
            ),
        ));
        $this->addColumn('action',
                array(
                    'header' => Mage::helper('fileuploader')->__('Action'),
                    'width' => '80',
                    'type' => 'action',
                    'getter' => 'getId',
                    'actions' => array(
                        array(
                            'caption' => Mage::helper('fileuploader')->__('Edit'),
                            'url' => array('base' => 'fileuploader/adminhtml_fileuploader/edit'),
                            'field' => 'id'
                        )
                    ),
                    'filter' => false,
                    'sortable' => false,
                    'index' => 'stores',
                    'is_system' => true,
        ));
        return parent::_prepareColumns();
    }

    public function getGridUrl() {
        return $this->getUrl('fileuploader/adminhtml_fileuploader/filegrid', array('_current' => true));
    }
    public function getRowUrl() {
        return '#';
    }

}
?>