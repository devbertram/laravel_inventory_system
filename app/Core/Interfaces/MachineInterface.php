<?php

namespace App\Core\Interfaces;
 


interface MachineInterface {

	public function fetch($request);

	public function store($request);

	public function update($request, $slug);

	public function updateStatus($request, $slug);

	public function destroy($slug);

	public function findBySlug($slug);

	public function getAll();
		
}