<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use View;
class HomeController extends Controller
{
    //
    function index(){
    	$xml = new \DOMDocument('1.0', 'UTF-8');
		$xml->load('bentham-nav-control.xml');
		$xsl = new \DOMDocument('1.0', 'UTF-8');
		$xsl->load('index.xsl');

		$proc = new \XSLTProcessor;
		$proc->importStyleSheet($xsl);
		$proc->setParameter('', 'day_id', date('d'));
		$proc->setParameter('', 'month_id', date('m'));
		$proc->setParameter('', 'year_id', date('Y'));
		$output = $proc->transformToXML($xml);
		header('Content-Type: text/html; charset=utf-8');
		//return view('pages.home',compact('output'));
		return View::make('pages.home')->with('output', $output);
    }
}
