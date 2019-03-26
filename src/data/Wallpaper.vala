/* ******************************************************************************
 * Copyright 2019 darkoverlordofdata.
 * 
 * Licensed under the Apache License, Version 2.0(the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *   http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 ******************************************************************************/
/**
 * Wallpaper plain old vala object
 */
public class BingWall.Wallpaper : Object 
{
    public int recno;
    public string timestamp;
    public string path;
    public string desc;
    public string headline;
    /**
     * Construct wallpaper
     * 
     * @param recno - index in table
     * @param timestep - YYYYMMDD
     * @param path - file name
     * @param desc - file desc
     * @param headline - headline
     */
    public Wallpaper(int recno=0, string? timestamp=null, string? path=null, string? desc=null, string? headline=null) 
    {
        this.recno = recno;
        this.timestamp = timestamp;
        this.path = path;
        this.desc = desc;
        this.headline = headline;
    }
}
