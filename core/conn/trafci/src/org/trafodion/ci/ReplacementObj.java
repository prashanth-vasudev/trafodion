// @@@ START COPYRIGHT @@@
//
// (C) Copyright 2013-2014 Hewlett-Packard Development Company, L.P.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
// @@@ END COPYRIGHT @@@

package org.trafodion.ci;

public class ReplacementObj extends RepObjInterface {

//	private String patternKey;
	private String patternValue;
	
	ReplacementObj(String patternKey, String patternValue)
	{
//		this.patternKey = patternKey;
		this.patternValue = patternValue;
	}
	
	public String getValue(String patternKey)
	{
		return this.patternValue;
	}
}
