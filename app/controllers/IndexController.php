<?php
use Phalcon\Crypt;

class IndexController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
    	$this->tag->setTitle('CRUD Read');
    	$this->view->dataUser = User::find(['order' => 'id DESC']);
    }

    public function addAction()
    {
    	$this->tag->setTitle('CRUD Create');
    }

    public function createAction()
    {
    	$model = new User();
    	$dataPost = $this->request->getPost();
    	$model->save($dataPost);
    	$this->response->redirect();
    }

    public function editAction($id=null)
    {
    	//echo Phalcon\Dispatcher->dispatch();
    	if(!empty($id)){
	    	$this->tag->setTitle('CRUD Read dan Update');
	    	$this->view->dataUser = User::findFirst($id);
	    }else{
	    	echo 'parameter id, tidak boleh kosong';
	    	die();
	    }
    }

    public function updateAction()
    {
    	$model = new User();
    	$dataPost = $this->request->getPost();
    	$data = $model->findFirst($dataUpdate['id']);
    	$model->save($dataPost);
    	$this->response->redirect();

    }

    public function deleteAction($id=null)
    {
    	if(!empty($id)){
	    	$model = new User();
	    	$data = $model->findFirst($id);
	    	$data->delete();
	    	$this->response->redirect();
	    }else{
	    	echo 'parameter id, tidak boleh kosong';
	    }
    }

}

